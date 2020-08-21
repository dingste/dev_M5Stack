/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   IPwm.h
 * Author: dieter
 *
 * Created on 25. April 2020, 21:22
 */

#ifndef IPWM_H
#define IPWM_H

enum Direction{
    direction_forward,
    direction_backward
};

class IPwm{
public:
    virtual ~IPwm() {

    };
    virtual void setSpeed(int) =0;
    virtual void setDirection(Direction)=0;
    virtual void stop()=0;
};

#endif /* IPWM_H */

