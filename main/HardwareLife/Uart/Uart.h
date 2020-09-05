#ifndef UART_H
#define UART_H
#include "IUart.h"
#include "driver/uart.h"

#define BAUDRATE 115200 
#define BUF_SIZE (128)

class Uart : public IUart
{
public:
    Uart(int rx, int tx,uart_port_t num);
    virtual ~Uart();

    protected:
    uint32_t read(uint8_t *const buf, const uint16_t length) override;
    bool write(const uint8_t* toWrite, int length) override;

    private:
    uint8_t* readByte();
    const uint8_t* getData();
    
    uart_port_t uart_num;
    
    uart_config_t uartconfig;
    uint8_t data[BUF_SIZE];
    //    uint8_t* data;
};

#endif /* UART_H */

