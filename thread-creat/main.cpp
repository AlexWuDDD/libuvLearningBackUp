//
// Created by Wu Alex on 2020/2/26.
//
#include "uv.h"
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>


void hare(void *arg) {
    int tracklen = *((int *) arg);
    while (tracklen) {
        tracklen--;
        sleep(1);
        fprintf(stderr, "Hare ran another step\n");
    }
    fprintf(stderr, "Hare done running!\n");
}

void tortoise(void *arg) {
    int tracklen = *((int *) arg);
    while (tracklen) {
        tracklen--;
        fprintf(stderr, "Tortoise ran another step\n");
        sleep(3);
    }
    fprintf(stderr, "Tortoise done running!\n");
}


int main()
{
    int traklen = 10;
    uv_thread_t hare_id;
    uv_thread_t tortoise_id;

    uv_thread_create(&hare_id, hare, &traklen);
    uv_thread_create(&tortoise_id, tortoise, &traklen);

    uv_thread_join(&hare_id);
    uv_thread_join(&tortoise_id);

    return 0;
}
