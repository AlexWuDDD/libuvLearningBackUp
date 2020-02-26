
#include <stdio.h>

#include <uv.h>

uv_loop_t *loop;
uv_timer_t gc_req;
uv_timer_t fake_job_req;

int count = 0;
int set = 0;

/*
 * int uv_timer_again(uv_timer_t* handle)
 * 停止定时器后，如果你想从新启动定时器，调用这个函数就可以了。
 */


void gc(uv_timer_t *handle) {
    fprintf(stderr, "Freeing unused objects - %d\n", count);
    if(count == 15){
        printf("repeat again\n");
        int rc = uv_timer_again(&fake_job_req);
        if(rc == -1){
            printf("uv_timer_again fail - %s\n", uv_strerror(rc));
        }
    }
    ++count;
}

void fake_job(uv_timer_t *handle) {
    static int i = 0;
    fprintf(stdout, "int i = %d\n", i);
    fprintf(stdout, "Fake job done\n");
    ++i;
    if(count == 5){
       uv_timer_set_repeat(handle, 500);
    }
    if(count == 10){
        uv_timer_stop(handle);
    }
}

int main() {
    loop = uv_default_loop();

    uv_timer_init(loop, &gc_req);
    //uv_unref((uv_handle_t*) &gc_req);

    uv_timer_start(&gc_req, gc, 0, 1000);

    // could actually be a TCP download or something
    uv_timer_init(loop, &fake_job_req);
    uv_timer_start(&fake_job_req, fake_job, 2000, 2000);
    return uv_run(loop, UV_RUN_DEFAULT);
}
