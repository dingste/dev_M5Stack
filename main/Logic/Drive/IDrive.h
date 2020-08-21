/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   IDrive.h
 * Author: dieter
 *
 * Created on 26. April 2020, 16:09
 */

#ifndef IDRIVE_H
#define IDRIVE_H
#include "HardwareLife/Gpio/Pwm/IPwm.h"
#include "HardwareLife/Gpio/Pwm/Pwm.h"
#include "DriveTo.h"
#include "PenTo.h"

class IDrive {
public:

    virtual ~IDrive() {
    };
    virtual void driveTo(DriveTo) = 0;
    virtual void penTo(PenTo*)=0;
};

#endif /* IDRIVE_H */

