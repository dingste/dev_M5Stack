#ifndef UART_H
#define UART_H
//#include "IUart.h"

/* these includes are available ! */

#include "driver/uart.h"
#include "driver/gpio.h"

#define BAUDRATE 115200 
#define BUF_SIZE 128

class Uart //: public IUart
{
public:
    Uart(int rx, int tx, uart_port_t num);
    virtual ~Uart();


protected:
    uint32_t read(uint8_t* buf, const uint16_t length);
    bool write(const uint8_t* toWrite, int length);
    
private:
    uart_port_t nump;
    uart_config_t uartconfig;
    uint8_t data[BUF_SIZE];
    //    uint8_t* data;
};

extern "C" {
    esp_err_t uart_driver_install(uart_port_t uart_num, int rx_buffer_size, int tx_buffer_size, int queue_size, QueueHandle_t *uart_queue, int intr_alloc_flags);
    int uart_write_bytes(uart_port_t uart_num, const char* src, size_t size);
    esp_err_t uart_param_config(uart_port_t uart_num, const uart_config_t *uart_config);
    esp_err_t uart_set_pin(uart_port_t uart_num, int tx_io_num, int rx_io_num, int rts_io_num, int cts_io_num);
    int uart_read_bytes(uart_port_t uart_num, uint8_t* buf, uint32_t length, TickType_t ticks_to_wait);
}
#endif /* UART_H */

