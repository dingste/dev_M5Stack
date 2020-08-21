/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   IMotor.h
 * Author: dieter
 *
 * Created on 30. Mai 2020, 19:01
 */

#ifndef IMOTOR_H
#define IMOTOR_H
#include "../../Logic/Drive/DriveTo.h"

class IMotor{
public:
    virtual ~IMotor(){};
    virtual int way2time(int)=0;
    virtual int time2way(int)=0;
    virtual void setDirection(DriveTo)=0;

};

#endif /* IMOTOR_H */

