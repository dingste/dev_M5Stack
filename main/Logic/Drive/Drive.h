/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Drive.h
 * Author: dieter
 *
 * Created on 26. April 2020, 16:08
 */

#ifndef DRIVE_H
#define DRIVE_H
#include "IDrive.h"

class Drive : public IDrive {
public:
    /* f/b left_front_wheel
     * f/b right_front_wheel
     * f/b left_back_wheel
     * f/b right_back_wheel
     */
    Drive(gpio_num_t, gpio_num_t, gpio_num_t, gpio_num_t, gpio_num_t, gpio_num_t, gpio_num_t, gpio_num_t);
    virtual ~Drive();
protected:
     void driveTo(DriveTo) override;
     void penTo(PenTo*)override;
    
private:
    IPwm* left_front_wheel;
    IPwm* right_front_wheel;
    IPwm* left_back_wheel;
    IPwm* right_back_wheel;
};

#endif /* DRIVE_H */

