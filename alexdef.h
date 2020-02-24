//
// Created by Wu Alex on 2020/2/24.
//

#ifndef LIBUVLEARNINGNOTE_ALEXDEF_H
#define LIBUVLEARNINGNOTE_ALEXDEF_H

#include <cstdlib>
#include "uv.h"

#define ALLOC_LOOP (uv_loop_t*)malloc(sizeof(uv_loop_t))

#define DELLOC_LOOP(loop) free((loop))

#endif //LIBUVLEARNINGNOTE_ALEXDEF_H
