/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   VallP.h
 * Author: dieter
 *
 * Created on 30. August 2020, 14:30
 */

#ifndef VALLP_H
#define VALLP_H
#include "HardwareLife/Gpio/IGpio.h"
#include "HardwareLife/Gpio/Gpio.h"
#include "Logic/Picture/Picture.h"
#include "Logic/Drive/IDrive.h"
#include "Logic/Drive/Drive.h"
#include "HardwareLife/Gpio/Pwm/IPwm.h"
#include "HardwareLife/Gpio/Pwm/Pwm.h"
#include "Physics/Pen/IPen.h"
#include "Physics/Pen/Fineliner.h"
class VallP {
public:
    VallP();
    VallP(const VallP& orig);
    virtual ~VallP();
private:

};

#endif /* VALLP_H */

