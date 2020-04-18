/* Create: 4. Juni 2019
 * File:   Uart.cpp
 * Author: Dieter Steuten at <d.steuten@elk.de> @ ELK GmbH, Krefeld
 */

#include "Uart.h"
#include "../../Log.h"
//#include "SerialAbstraction/ISerial.h"


Uart::Uart(int rx, int tx,uart_port_t num) {
    nump = num;
    //    data = (uint8_t*) malloc(BUF_SIZE);

    uart_config_t uart_config = {
	.baud_rate = BAUDRATE,
	.data_bits = UART_DATA_8_BITS,
	.parity = UART_PARITY_DISABLE,
	.stop_bits = UART_STOP_BITS_1,
	.flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
	.rx_flow_ctrl_thresh = 120,
	.use_ref_tick = false
    };
    // Configure UART parameters
    uart_param_config(nump /*UART_NUM_1*/, &uart_config);
    uart_set_pin(nump /*UART_NUM_1*/, tx, rx, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);
   // uart_set_pin(UART_NUM_1, GPIO_NUM_12, GPIO_NUM_13, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);
    //uart_driver_install(UART_NUM_2, uart_buffer_size, uart_buffer_size, 10, &uart_queue, 0);
   DEBUG << "UART init " << (int) uart_driver_install(nump /*UART_NUM_1*/, BUF_SIZE * 2, 0, 0, NULL, 0) << "\n";
}

Uart::~Uart() {
}

uint32_t Uart::read(uint8_t* buf, const uint16_t length) {

    uint32_t sendlength = uart_read_bytes(nump, buf, length, 20 / portTICK_RATE_MS);
   // if( sendlength>0) std::cout << "read: " << buf << (int) length <<"\n";
    return sendlength;
}

bool Uart::write(const uint8_t* toWrite, int length) {
  //   DEBUG << "\tUART write \t" << (const char*) toWrite << "\t" << (int) length << "\n";
    if (uart_write_bytes(nump,(const char*) toWrite, length) != 0) {
	return true;
    } else {
	return false;
    }
}




