/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Kiss.cpp
 * Author: dieter
 * 
 * Created on 28. Dezember 2019, 00:23
 */

#include "Kiss.h"
#include <stdio.h>
#include <string>
#include <iostream>

Kiss::Kiss(gpio_num_t gpio) : Gpio::Gpio(gpio, GPIO_MODE_OUTPUT) {
}

Kiss::~Kiss() {
}

bool Kiss::onKiss() {
    if (connected()) {
        std::cout << "(" << atPin() << ") geküsst\n";
        return true;
    } else return false;
}

void Kiss::toKiss() {
    ping();
}
