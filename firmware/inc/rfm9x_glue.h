#ifndef __RFM9X_GLUE_H__
#define __RFM9X_GLUE_H__

#include "rfm9x_lora.h"
#include "spi.h"
#include "delay.h"
#include "pin_reset.h"
#include "result.h"
#include "irq_handler.h"
#include "stdbool.h"

result_t rfm9x_g_init();
result_t rfm9x_g_send_message(uint8_t* data, uint8_t length);
result_t rfm9x_g_start_reception();
result_t rfm9x_g_get_message(read_func callback);
result_t rfm9x_g_get_rssi(int* const rssi);
bool rfm9x_g_get_message_pending();

#endif
