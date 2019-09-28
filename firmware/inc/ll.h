#ifndef __LL_H__
#define __LL_H__

#include <stdlib.h>
#include <stddef.h>
#include "result.h"

typedef struct ll {
  void *data; // data pointer
  struct ll* next; // pointer to next element; NULL is last element
} ll_t;

typedef void(*ll_func_t)(void *data);

result_t ll_insert(ll_t** ll, void *data);
result_t ll_remove(ll_t** ll, void *data);
void ll_execute(ll_t* ll, ll_func_t func);

#endif
