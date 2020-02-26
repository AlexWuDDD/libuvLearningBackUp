//
// Created by Wu Alex on 2020/2/26.
//

#include "uv.h"
#include <cstdio>
#include <random>
#include <unistd.h>
#include <iostream>

#define FIB_UNTIL 25

long fib_(long t) {
    if (t == 0 || t == 1)
        return 1;
    else
        return fib_(t-1) + fib_(t-2);
}

void fib(uv_work_t *req)
{
    int n = *(int*)req->data;
    if(random() % 2){
        sleep(1);
    }
    else{
        sleep(3);
    }
    long fib = fib_(n);
    fprintf(stderr, "%dth fibonacci is %lu\n", n, fib);
}

void after_fib(uv_work_t *req, int status)
{
    fprintf(stderr, "Done calculation %dth fibonacci \n", *(int*)req->data);
}

int main()
{
    uv_loop_t* loop = uv_default_loop();



    putenv("UV_THREADPOOL_SIZE=25");
    printf("UV_THREADPOOL_SIZE = %s\n", getenv("UV_THREADPOOL_SIZE"));

    auto start = std::chrono::system_clock::now();

    int data[FIB_UNTIL];
    uv_work_t req[FIB_UNTIL];
    for(int i = 0; i < FIB_UNTIL; ++i){
        data[i] = i;
        req[i].data = (void*)&data[i];
        uv_queue_work(loop, &req[i], fib, after_fib);
    }
    uv_run(loop, UV_RUN_DEFAULT);

    auto end = std::chrono::system_clock::now();
    auto duration = std::chrono::system_clock::duration (end - start);
    std::cout <<  "花费了"
         << (double)(duration.count()) * std::chrono::microseconds::period::num / std::chrono::microseconds::period::den
            << "秒" << std::endl;
    return 0;
}

