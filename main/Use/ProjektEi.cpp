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
#include <stdlib.h>

ProjektEi::ProjektEi(gpio_num_t pinFirst, gpio_num_t pinSecond) {
    int randomDuration = rand() % 10 + 1;
    pinA = new Gpio(pinFirst, gpio_mode_t::GPIO_MODE_INPUT);
    pinB = new Gpio(pinSecond, gpio_mode_t::GPIO_MODE_OUTPUT);

    einEi = new Ei();
    einEi->content("superzeug");
    einEi->operation(OPERATIONS::OP_SET, ITEMS::ITEM_MEDIA, MEDIA_TYPE::TEXT);

    karton = new EierKarton();
    karton->include(einEi);
    Ei* ausJournal = karton->getJournal();

    // schleife für gpios

    while (true) { //!pinA->connected() || !pinB->connected()) {
    /// pin einzeln abfragen
        /// aushandeln rx / tx
        if (pinB->connected()) {
            DEBUGOUT << pinB->getNumber() << " pinB connected\n";
            serialLine = new Uart(pinSecond, pinFirst, UART_NUM_1);
            break;
        }else {
        pinB->ping();
        vTaskDelay(randomDuration / portTICK_PERIOD_MS);
        }
        if (pinA->connected()) {
            DEBUGOUT << pinA->getNumber() << " pinA connected\n";
            serialLine = new Uart(pinFirst, pinSecond, UART_NUM_1);
            break;
        }else{
        pinA->ping();
        vTaskDelay(2*randomDuration / portTICK_PERIOD_MS);}
    }


    // schleife gui
    // schleife data transport

    /// bt aufbauen
    /// wifi aufbauen
    /// zuerst Ei
    /// fingerprint zum vergleich
    /// dann public key

    delete ausJournal;
}

ProjektEi::~ProjektEi() {
    delete pinB;
    delete pinA;
    delete einEi;
    delete serialLine;
    delete karton;
}

