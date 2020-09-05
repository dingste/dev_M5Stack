/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   KUhr.h
 * Author: dieter
 *
 * Created on 30. August 2020, 14:30
 */

#ifndef KUHR_H
#define KUHR_H
#include "HardwareLife/OLED/OLED.h"
#include "HardwareLife/Clock/Clock.h"
#include "HardwareLife/IMU/Imu.h"
#include "HardwareLife/Gpio/IGpio.h"
#include "HardwareLife/Gpio/Gpio.h"
class KUhr {
public:
    KUhr();
    KUhr(const KUhr& orig);
    virtual ~KUhr();
private:

};

#endif /* KUHR_H */

