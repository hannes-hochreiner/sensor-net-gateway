#include "main.h"

void infiniteLoop() {
  while (1) {
    __NOP();
  }
}

#define CHECK_RESULT(fun) if(fun != RESULT_OK) { infiniteLoop(); }

int main() {
  volatile result_t res;

  // switch_to_external();

  CHECK_RESULT(switch_to_hsi16());
  SystemCoreClockUpdate();

  CHECK_RESULT(rtc_init());
  spi_init();
  // res = i2c_init();
  pin_reset_init();
  CHECK_RESULT(rfm9x_g_init());

  if ((GPIOB->IDR & GPIO_IDR_ID5) == GPIO_IDR_ID5) {
    rfm9x_g_get_message(&rfm_read_message);
  }

  CHECK_RESULT(uart_init());
  CHECK_RESULT(rfm9x_g_start_reception());

  const uint8_t bTx[] = "{\"type\":\"info\",\"message\":\"sensor net gateway starting\"}\n";
  // uint8_t bRx[10];
  uart_tx_t uTx = {
    .buffer = bTx,
    .length = sizeof(bTx)
  };
  uart_write(&uTx);
  // uart_rx_t uRx = {
  //   .buffer = bRx,
  //   .length = 10,
  //   .callback = &uart_rx_cb
  // };

  rtc_wait_until_next_period();

  while (1) {
    if (rfm9x_g_get_message_pending()) {
      rfm9x_g_get_message(&rfm_read_message);
    }

    // if ((GPIOB->IDR & GPIO_IDR_ID5) == GPIO_IDR_ID5) {
    //   rfm9x_g_get_message(&rfm_read_message);
    // }
    // result_t res_meas = bme280_g_measurement(&meas_data_new);
    // volatile boolean_t skip = BOOL_TRUE;

    // GPIOB->MODER = (GPIOB->MODER & ~(GPIO_MODER_MODE7)) | (GPIO_MODER_MODE7_0);
    // GPIOB->BSRR |= GPIO_BSRR_BR_7;
    // for (uint32_t cntr = 0; cntr < 2000; cntr++) {
    //   __NOP();
    // }
    // GPIOB->BSRR |= GPIO_BSRR_BS_7;
    // GPIOB->MODER = (GPIOB->MODER & ~(GPIO_MODER_MODE7)) | (GPIO_MODER_MODE7_1);

    // uint8_t data[] = {0x00};
    // // 0xC0
    // res = i2c_write(0x60, data, 1);

    // uint8_t enc_data[32];
    // aes_key_t key = {KEY0, KEY1, KEY2, KEY3};
    // aes_ecb_encrypt(&key, (uint32_t*)&msg, (uint32_t*)enc_data, 8);
    // rfm9x_g_send_message(enc_data, 32);

    // uart_write(&uTx);
    // uart_read(&uRx);

    // while (USART2->ISR & USART_ISR_RXNE) {
    //   volatile uint8_t tmp = USART2->RDR;
    //   volatile uint8_t tmp2 = 5;
    // }
    // stop_enable();
    // rtc_wait_until_next_period();
    // stop_disable();
    __WFI();
  }
}

void uart_rx_cb(uint32_t length) {
  volatile uint32_t tmp = length;
}

void rfm_read_message(const uint8_t* const data, uint16_t length) {
  if (length > 256) {
    return;
  }

  int rssi;
  rfm9x_g_get_rssi(&rssi);
  const char* startFormat = "{\"type\":\"rfm\",\"rssi\":\"%i\",\"data\":\"";
  const char* endFormat = "\"}\n";
  const char* hexFormat = "%02X";
  int lengthStart = snprintf(NULL, 0, startFormat, rssi);
  int lengthData = length * 2;
  int lengthEnd = strlen(endFormat);
  int lengthTotal = lengthStart + lengthData + lengthEnd;

  char message[lengthTotal + 1];
  int idx = sprintf(message, startFormat, rssi);

  for (uint16_t cntr = 0; cntr < length; cntr++) {
    sprintf(message + idx, hexFormat, data[cntr]);
    idx += 2;
  }

  sprintf(message + idx, endFormat);

  uart_tx_t uTx = {
    .buffer = message,
    .length = lengthTotal
  };
  volatile result_t res = uart_write(&uTx);
}
