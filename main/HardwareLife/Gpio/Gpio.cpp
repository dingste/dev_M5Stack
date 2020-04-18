/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Gpio.cpp
 * Author: dieter
 * 
 * Created on 28. Dezember 2019, 00:20
 */

#include "Gpio.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

Gpio::Gpio(gpio_num_t pin, gpio_mode_t io) : gpioNumber(pin) {
    durationTime = 0;


    pinconfig.pin_bit_mask = (1ULL << pin); /*!< GPIO pin: set with bit mask, each bit maps to a GPIO */
    pinconfig.mode = io; /*!< GPIO mode: set input/output mode                     */
    pinconfig.pull_down_en = GPIO_PULLDOWN_ENABLE; /*!< GPIO pull-up                                         */
    pinconfig.pull_up_en = GPIO_PULLUP_DISABLE; /*!< GPIO pull-down                                       */
    pinconfig.intr_type = GPIO_INTR_DISABLE; /*!< GPIO interrupt type                                  */
    gpio_config(&pinconfig);
}

Gpio::~Gpio() {
}

bool Gpio::connected() {
    pinconfig.mode = GPIO_MODE_INPUT;
    pinconfig.pull_down_en = GPIO_PULLDOWN_ENABLE;
    pinconfig.pull_up_en = GPIO_PULLUP_DISABLE;
    gpio_config(&pinconfig);
    return ((bool) gpio_get_level(gpioNumber));
}

bool Gpio::pending() {
    pinconfig.pull_down_en = GPIO_PULLDOWN_ENABLE;
    pinconfig.mode = GPIO_MODE_INPUT;
    gpio_config(&pinconfig);
    return !connected();
}

int Gpio::duration() {
    return durationTime;
}

int Gpio::atPin() {
    return (int) gpioNumber;
}

void Gpio::ping() {
    pinconfig.pull_down_en = GPIO_PULLDOWN_DISABLE;
    pinconfig.mode = GPIO_MODE_OUTPUT;
    gpio_config(&pinconfig);
    gpio_set_level(gpioNumber, 1);
    vTaskDelay(10 / portTICK_PERIOD_MS);
}
