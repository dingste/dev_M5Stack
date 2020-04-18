/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Kiss.h
 * Author: dieter
 *
 * Created on 28. Dezember 2019, 00:23
 */

#ifndef KISS_H
#define KISS_H
#include "../Gpio.h"
#include "IKiss.h"

class Kiss : public IKiss, public Gpio {
public:
    Kiss(gpio_num_t gpio);
    virtual ~Kiss();

protected:
    bool onKiss();
    void toKiss();
};

#endif /* KISS_H */

