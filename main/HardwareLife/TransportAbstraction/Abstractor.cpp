#include "Abstractor.h"
#include "../Uart/Uart.h"
#include "../../IdLife/Id.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include <stdio.h>
#include <string>
#include <iostream>
#include <sstream>


/*
SerialAbstraction::SerialAbstraction(uart_port_t num, int rx, int tx, Id* ownId) {
    uarthandler = new Uart(rx, tx, num);
    currentId = new Id(*ownId);

    buffer = (char*) malloc(BUF_SIZE); //new char[10];
    //currentId->setId(ownId->getName(), ownId->getKey());
    std::cout << "create: " << *currentId << " on " << (int) rx << "|" << (int) tx << endl;
}

SerialAbstraction::~SerialAbstraction() {
    delete uarthandler;
    delete currentId;
}

void SerialAbstraction::subscribe() {
    istringstream istr;
    int len = 0;
    bufferId = new Id();

    for (;;) {
        len = uarthandler->read((uint8_t*) buffer, BUF_SIZE);
        if (len > 0) {
            istr.str(buffer);
            istr >> *bufferId;
            std::cout << "subscribe to: " << *bufferId << endl;
        } else {
            std::cout << ".";
        }
        vTaskDelay(60 / portTICK_PERIOD_MS);
    }
    delete bufferId;
}

void SerialAbstraction::publish() {
    ostringstream ostr;
    ostr << *currentId;
    std::string str = ostr.str();

    const char* toWrite = str.c_str();

    uarthandler->write((const uint8_t*) toWrite, str.size());
      std::cout << "publish: " << *currentId << endl;
}
*/
 
 

