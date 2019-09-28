#ifndef __MAIN_H__
#define __MAIN_H__

#include "stm32l0xx.h"
#include "rfm9x_glue.h"
#include "aes.h"
#include "message.h"
#include "rtc.h"
#include "system.h"
#include "uart.h"
#include "stdbool.h"

const float humidity_threshold = 3;
const float temperature_threshold = 1;
const float pressure_threshold = 2;

void uart_rx_cb(uint32_t length);
void rfm_callback();
void rfm_read_message(const uint8_t* const data, uint16_t length);

#endif
