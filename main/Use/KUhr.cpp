/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   KUhr.cpp
 * Author: dieter
 * 
 * Created on 30. August 2020, 14:30
 */

#include "KUhr.h"

KUhr::KUhr() {
/*        OLED* oled = new OLED();
            IGpio* blue_led = new Gpio(GPIO_NUM_19, GPIO_MODE_OUTPUT);
    IGpio* button = new Gpio(GPIO_NUM_35, GPIO_MODE_INPUT);
       // Clock* clock = new Clock();
    // IPwm* buzzer = new Pwm(GPIO_NUM_26, GPIO_NUM_26);
    //IGpio* buzzer = new Gpio(GPIO_NUM_26, GPIO_MODE_OUTPUT);
        //  IPwm* blue_led_pwm = new Pwm(GPIO_NUM_19, GPIO_NUM_19);    
//    Imu* imu = new Imu();
    
        // clock->sleep();
    while (true) {
        vTaskDelay(1000 / portTICK_PERIOD_MS);

       if (!button->connected()/ *!clock->isSleeping()* /) {

            blue_led->setONOFF(1);
            oled->print(clock->getClock(), 10, 40, true, true);
            vTaskDelay(2800 / portTICK_PERIOD_MS);

        } else {
            oled->clear();
            clock->buildTime();
            blue_led->setONOFF(0);

        }
*/
}

KUhr::KUhr(const KUhr& orig) {
}

KUhr::~KUhr() {
}

