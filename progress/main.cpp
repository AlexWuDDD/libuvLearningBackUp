//
// Created by Wu Alex on 2020/2/26.
//

#include <uv.h>
#include <random>
#include <unistd.h>

uv_loop_t *loop;
uv_async_t async1;
uv_async_t async2;

double percentage;
int progress;

void fake_download(uv_work_t *req) {
    int size = *((int*) req->data);
    int downloaded = 0;
    while (downloaded < size) {
        percentage = downloaded*100.0/size;
        async1.data = (void*) &percentage;
        uv_async_send(&async1);

        sleep(1);
        downloaded += (200+random())%1000; // can only download max 1000bytes/sec,
        // but at least a 200;
    }
}

void after(uv_work_t *req, int status) {
    fprintf(stderr, "Download complete\n");
    uv_close((uv_handle_t*) &async1, NULL);
}

void print_progress(uv_async_t *handle) {
    double percentage = *((double*) handle->data);
    fprintf(stderr, "Downloaded %.2f%%\n", percentage);
}

void worker(uv_work_t *req){
    int size = *((int*)req->data);
    while(progress < size){
        async2.data = (void*)&progress;
        uv_async_send(&async2);
        sleep(1);
        progress += 100;
    }
}

void after_worker(uv_work_t *req, int status){
    fprintf(stderr, "Worker finish the job\n");
    uv_close((uv_handle_t*)&async2, NULL);
}

void recv_mesg(uv_async_t *handle){
    int data = *((int*)handle->data);
    fprintf(stderr, "Progress %d\n", data);
}


int main(){
    loop = uv_default_loop();

    uv_work_t req;
    int size = 10240;
    req.data = (void*)&size;

    uv_work_t req2;
    req2.data = (void*)&size;

    uv_async_init(loop, &async1, print_progress);
    uv_async_init(loop, &async2, recv_mesg);
    uv_queue_work(loop, &req, fake_download, after);
    uv_queue_work(loop, &req2, worker, after_worker);

    return uv_run(loop, UV_RUN_DEFAULT);
}