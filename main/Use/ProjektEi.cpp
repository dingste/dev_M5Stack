/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   ProjektEi.cpp
 * Author: dieter
 * 
 * Created on 30. August 2020, 14:29
 */

#include "ProjektEi.h"
#include "../HardwareLife/Gpio/Gpio.h"
#include "../HardwareLife/Uart/Uart.h"
#include "../Log.h"

ProjektEi::ProjektEi(gpio_num_t rx, gpio_num_t tx) {
    rxPin = new Gpio(rx, gpio_mode_t::GPIO_MODE_INPUT);
    txPin = new Gpio(tx, gpio_mode_t::GPIO_MODE_OUTPUT);

    serialLine = new Uart(rx, tx, UART_NUM_1);

    einEi = new Ei();
    einEi->content("superzeug");
    einEi->operation(OPERATIONS::OP_SET, ITEMS::ITEM_MEDIA, MEDIA_TYPE::TEXT);

    Ei* zweitesEi = new Ei();
    zweitesEi->content("unnütz");
    zweitesEi->operation(OPERATIONS::OP_SET, ITEMS::ITEM_MEDIA, MEDIA_TYPE::TEXT);

    karton = new EierKarton();
    karton->include(einEi);
    karton->include(zweitesEi);
    einEi->content("rabimmel");
    einEi->operation(OPERATIONS::OP_SET, ITEMS::ITEM_MEDIA, MEDIA_TYPE::TEXT);
    karton->include(einEi);

    Ei* ausJournal = karton->getJournal();
    ausJournal->operation(OPERATIONS::OP_GET, ITEMS::ITEM_ID, MEDIA_TYPE::TEXT);
    DEBUGOUT << ausJournal->content() << std::endl;
    ausJournal->operation(OPERATIONS::OP_GET, ITEMS::ITEM_MEDIA, MEDIA_TYPE::TEXT);
    DEBUGOUT << ausJournal->content() << std::endl;

    karton->setJournal(ausJournal, true);
    karton->setJournal(ausJournal, true);

    Ei* neuesJournal = karton->getJournal();
    neuesJournal->operation(OPERATIONS::OP_GET, ITEMS::ITEM_ID, MEDIA_TYPE::TEXT);
    DEBUGOUT << neuesJournal->content() << std::endl;
    neuesJournal->operation(OPERATIONS::OP_GET, ITEMS::ITEM_MEDIA, MEDIA_TYPE::TEXT);
    DEBUGOUT << neuesJournal->content() << std::endl;
}

ProjektEi::~ProjektEi() {
    delete rxPin;
    delete txPin;
    delete einEi;
    delete serialLine;

}

