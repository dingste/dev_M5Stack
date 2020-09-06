/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Gpio.h
 * Author: dieter
 *
 * Created on 28. Dezember 2019, 00:20
 */

#ifndef GPIO_H
#define GPIO_H

#include "IGpio.h"
#include "driver/gpio.h"

class Gpio : public IGpio {
public:
    Gpio(gpio_num_t pin, gpio_mode_t io);
    virtual ~Gpio();
    int atPin();

    
    protected:
    int duration() override;
    bool connected()override;
    bool pending()override;
    int getNumber()override;
    void setONOFF(bool)override;
    void ping()override;
    
private:
    gpio_num_t gpioNumber;
    int durationTime;
    gpio_config_t pinconfig;
};

#endif /* GPIO_H */

