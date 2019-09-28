#ifndef __UART_H__
#define __UART_H__

#include "stm32l0xx.h"
#include "result.h"
#include "stdbool.h"
#include <stdlib.h>
#include <string.h>

typedef void (*uart_rx_cb_t)(uint32_t len);

typedef struct {
  uint8_t* buffer;
  uint32_t length;
} uart_tx_t;

typedef struct {
  uint8_t* buffer;
  uint32_t length;
  uart_rx_cb_t callback;
} uart_rx_t;

result_t uart_init();
result_t uart_read(uart_rx_t* rx);
result_t uart_write(uart_tx_t* tx);

#endif
