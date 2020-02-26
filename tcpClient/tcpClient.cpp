//
// Created by Wu Alex on 2020/2/25.
//

#include "../alexdef.h"

void alloc_buffer(uv_handle_t *handle, size_t suggested_size, uv_buf_t *buf) {
    buf->base = (char*) malloc(suggested_size);
    buf->len = suggested_size;
}

void on_close(uv_handle_t* handle)
{
    printf("closed.\n");
}

void on_read(uv_stream_t* tcp, ssize_t nread, const uv_buf_t* buf)
{
    if(nread >= 0) {
        //printf("read: %s\n", tcp->data);
        printf("read: %s\n", buf->base);
    }
    else {
        //we got an EOF
        uv_close((uv_handle_t*)tcp, on_close);
    }

    //cargo-culted
    free(buf->base);
}

void on_write(uv_write_t* req, int status)
{
    if (status) {
        fprintf(stderr, "uv_write error: %s\n", uv_strerror(status));
        return;
    }
    printf("wrote.\n");
    //uv_close((uv_handle_t*)req->handle, on_close);
}

void on_connect(uv_connect_t *connect, int status)
{
    if(status < 0){
        fprintf(stderr, "connection error- %s\n", uv_strerror(status));
        return;
    }

    printf("connected.\n");

    uv_stream_t* stream = connect->handle;

    uv_buf_t buffer[] = {
            {.base = "hello", .len = 5},
            {.base = "world", .len = 5}
    };

    //uv_write_t request;

    //uv_write(&request, stream, buffer, 2, on_write);
    uv_read_start(stream, alloc_buffer, on_read);
}

int main(){
    uv_loop_t *loop = (uv_loop_t*)malloc(sizeof(uv_loop_t));
    uv_loop_init(loop);


    uv_tcp_t* socket = (uv_tcp_t*)malloc(sizeof(uv_tcp_t));
    uv_tcp_init(loop, socket);

    uv_connect_t* connect = (uv_connect_t*)malloc(sizeof(uv_connect_t));

    struct sockaddr_in dest;
    uv_ip4_addr("127.0.0.1", 7000, &dest);

    uv_tcp_connect(connect, socket, (const struct sockaddr*)&dest, on_connect);


    uv_run(loop, UV_RUN_DEFAULT);
    uv_loop_close(loop);
    free(loop);
}
