/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   IFace.h
 * Author: dieter
 *
 * Created on 19. Oktober 2019, 23:22
 */

#ifndef IFACE_H
#define IFACE_H
#include "Positioning.h"


class IFace{
public:

    virtual ~IFace() {

    }

    virtual void smile() =0;
    virtual void sad()=0;
    virtual void lookLeft()=0;
    virtual void lookRight()=0;
    virtual void sleep()=0;
    virtual void blink()=0;
};

#endif /* IFACE_H */

