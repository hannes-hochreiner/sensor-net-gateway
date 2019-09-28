#ifndef __IRQ_HANDLER_H__
#define __IRQ_HANDLER_H__

#include <stddef.h>
#include <stdlib.h>
#include "stm32l021xx.h"
#include "result.h"
#include "ll.h"

typedef void(*void_func_t)();

result_t add_handler(IRQn_Type num, void_func_t func);
result_t remove_handler(IRQn_Type num, void_func_t func);

#endif
