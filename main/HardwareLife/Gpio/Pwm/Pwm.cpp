/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Pwm.cpp
 * Author: dieter
 * 
 * Created on 25. April 2020, 21:26
 */

#include "Pwm.h"
#include "../Gpio.h"

Pwm::Pwm(gpio_num_t gpio_forward, gpio_num_t gpio_backward) {
    gpioForPwm_forward = new Gpio(gpio_forward, GPIO_MODE_OUTPUT);
    gpioForPwm_backward = new Gpio(gpio_backward, GPIO_MODE_OUTPUT);
    currentSpeed = 0;

    ledc_timer_config_t timer_conf;
    timer_conf.duty_resolution = LEDC_TIMER_10_BIT;
    timer_conf.freq_hz = 5000;
    timer_conf.speed_mode = LEDC_HIGH_SPEED_MODE;
    timer_conf.timer_num = LEDC_TIMER_0;
    ledc_timer_config(&timer_conf);
    setDirection(Direction::direction_forward);
}

Pwm::~Pwm() {
    delete gpioForPwm_forward;
    delete gpioForPwm_backward;
}

void Pwm::setSpeed(int speed) {
    uint32_t max = 1 << 10;
    if (speed > 100) speed = 100;
    currentSpeed = max * speed / 100;
    if (currentSpeed >= max) currentSpeed = max - 1;

    ledc_set_duty(LEDC_HIGH_SPEED_MODE, LEDC_CHANNEL_0, currentSpeed);
    ledc_update_duty(LEDC_HIGH_SPEED_MODE, LEDC_CHANNEL_0);
}

void Pwm::setDirection(Direction forthOrBack) {
    ledc_channel_config_t ledc_conf;
    switch (forthOrBack) {
        case Direction::direction_backward:
            gpioForPwm_backward->setONOFF(true);
            gpioForPwm_forward->setONOFF(false);

            ledc_conf.channel = LEDC_CHANNEL_0;
            ledc_conf.duty = 0;
            ledc_channel.gpio_num = gpioForPwm_backward->getNumber();
            ledc_conf.intr_type = LEDC_INTR_DISABLE;
            ledc_conf.speed_mode = LEDC_HIGH_SPEED_MODE;
            ledc_conf.timer_sel = LEDC_TIMER_0;
            ledc_channel_config(&ledc_conf);
            break;
        case Direction::direction_forward:
            gpioForPwm_forward->setONOFF(true);
            gpioForPwm_backward->setONOFF(false);

            ledc_conf.channel = LEDC_CHANNEL_0;
            ledc_conf.duty = 0;
            ledc_channel.gpio_num = gpioForPwm_forward->getNumber();
            ledc_conf.intr_type = LEDC_INTR_DISABLE;
            ledc_conf.speed_mode = LEDC_HIGH_SPEED_MODE;
            ledc_conf.timer_sel = LEDC_TIMER_0;
            ledc_channel_config(&ledc_conf);
            break;
        default: break;
    }
    /*


        ledc_channel.duty = 0;
        ledc_channel.speed_mode = LEDC_HIGH_SPEED_MODE;
        ledc_channel.hpoint = 0;
        ledc_channel.timer_sel = LEDC_TIMER_0;
        ledc_channel_config(&ledc_channel);
     */
}

void Pwm::stop() {
    setSpeed(0);
}
