/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Pwm.h
 * Author: dieter
 *
 * Created on 25. April 2020, 21:26
 */

#ifndef PWM_H
#define PWM_H
#include "IPwm.h"
#include "../IGpio.h"
#include "driver/gpio.h"
#include "driver/ledc.h"

class Pwm : public IPwm {
public:
    Pwm(gpio_num_t gpio_forward,gpio_num_t gpio_backward);
    virtual ~Pwm();
protected:
    void setSpeed(int) override;
    void setDirection(Direction)override;
    void stop()override;
private:
    IGpio* gpioForPwm_forward;
        IGpio* gpioForPwm_backward;
    int currentSpeed;
    ledc_timer_config_t ledc_timer;
    ledc_channel_config_t ledc_channel;
};

#endif /* PWM_H */

