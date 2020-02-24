//
// Created by Wu Alex on 2020/2/24.
//
#include <cstdlib>
#include <cassert>
#include "uv.h"
#include <unistd.h>

#define TEST_FILE "test.txt"
#define OUT_FILE "out.txt"

int fdout;
int fdin= 100;

uv_fs_t open_req;
uv_fs_t read_req;
uv_fs_t write_req;

void on_read(uv_fs_t* req);

static char buffer[5];
static uv_buf_t iov;

void on_write(uv_fs_t* req){
    if(req->result < 0){
        fprintf(stderr, "Write error: %s\n", uv_strerror((int)req->result));
    }
    else{
        uv_fs_read(req->loop, &read_req, open_req.result, &iov, 1, -1, on_read);
    }
}

void on_read(uv_fs_t* req)
{
    if(req->result < 0){
        fprintf(stderr, "Read error: %s\n", uv_strerror(req->result));
    }
    else if(req->result == 0){
        uv_fs_t close_req;
        //synchronous
        uv_fs_close(req->loop, &close_req, open_req.result, NULL);
    }
    else if(req->result > 0){
        printf("read is %s\n", buffer);
        iov.len = req->result;
        uv_fs_write(req->loop, &write_req, fdout, &iov, 1, -1, on_write);
    }
}

void on_open(uv_fs_t* req)
{
    assert(req == &open_req);
    if(req->result >= 0){
        iov = uv_buf_init(buffer, sizeof(buffer));
        uv_fs_read(req->loop, &read_req, req->result, &iov, 1, -1, on_read);
    }
    else{
        fprintf(stderr, "error opening file: %s\n", uv_strerror(int(req->result)));
    }
}

int main(){

    fdout = open(OUT_FILE, O_WRONLY|O_CREAT);
    uv_loop_t *loop = (uv_loop_t*)malloc(sizeof(uv_loop_t));
    uv_loop_init(loop);

    int fdin = uv_fs_open(loop, &open_req, TEST_FILE, O_RDWR, 0, on_open);
    printf("fdin: %d\n", fdin);

    uv_run(loop, UV_RUN_DEFAULT);
    uv_loop_close(loop);

    uv_fs_req_cleanup(&open_req);
    uv_fs_req_cleanup(&read_req);
    uv_fs_req_cleanup(&write_req);

    free(loop);
    close(fdout);

    return 0;
}

