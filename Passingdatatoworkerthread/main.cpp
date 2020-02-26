//
// Created by Wu Alex on 2020/2/26.
//

#include "uv.h"
#include <cstdio>
#include <random>
#include <unistd.h>
#include <iostream>

struct ftp_baton {
    uv_work_t req;
    char *host;
    int port;
    char *username;
    char *password;
};

void afterwork(uv_work_t *req, int status)
{
    ftp_baton *baton = (ftp_baton*)req;
    free(baton);
}

void work(uv_work_t * req){
    ftp_baton *baton = (ftp_baton*)req->data;
    fprintf(stderr, "Connecting to %s\n", baton->host);
}

int main()
{
    uv_loop_t* loop = uv_default_loop();

    putenv("UV_THREADPOOL_SIZE=25");
    printf("UV_THREADPOOL_SIZE = %s\n", getenv("UV_THREADPOOL_SIZE"));

    auto start = std::chrono::system_clock::now();


    ftp_baton *baton = (ftp_baton*)malloc(sizeof(ftp_baton));
    baton->req.data = (void*)baton;
    baton->host = "alex is cool";
    baton->port = 21;

    uv_queue_work(loop, &baton->req, work, afterwork);


    uv_run(loop, UV_RUN_DEFAULT);

    auto end = std::chrono::system_clock::now();
    auto duration = std::chrono::system_clock::duration (end - start);
    std::cout <<  "花费了"
              << (double)(duration.count()) * std::chrono::microseconds::period::num / std::chrono::microseconds::period::den
              << "秒" << std::endl;
    return 0;
}

