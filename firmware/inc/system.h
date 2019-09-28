#ifndef __SYSTEM_H__
#define __SYSTEM_H__

#include "stm32l0xx.h"
#include "result.h"

void stop_enable();
void stop_disable();
void switch_to_external();
result_t switch_to_hsi16();

#endif
