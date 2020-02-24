//
// Created by Wu Alex on 2020/2/24.
//

#include "test.h"
#include "uv.h"
#include <cstdio>
#include <cstring>
#include <cstdlib>

void HelloWorld()
{
    uv_loop_t *loop = (uv_loop_t*)malloc(sizeof(uv_loop_t));
    uv_loop_init(loop);

    printf("Now quiting.\n");
    uv_run(loop, UV_RUN_DEFAULT);
    uv_loop_close(loop);
    free(loop);
    return;
}