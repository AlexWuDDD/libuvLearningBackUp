//
// Created by Wu Alex on 2020/2/26.
//
#include "uv.h"
#include <stdio.h>


static uv_once_t once_only = UV_ONCE_INIT;

int i = 0;

void increment(){
    i++;
}

void thread1(void *arg){
    printf("thread 1\n");
    uv_once(&once_only, increment);
}

void thread2(void *arg){
    printf("thread 2\n");
    uv_once(&once_only, increment);
}


int main(){

    uv_thread_t threads[2];

    uv_thread_create(&threads[0], thread1, NULL);
    uv_thread_create(&threads[1], thread2, NULL);

    uv_thread_join(&threads[0]);
    uv_thread_join(&threads[1]);

    printf("i = %d\n", i);

    return 0;
}
