/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   ITranspondUnit.h
 * Author: dieter
 *
 * Created on 6. Juni 2020, 16:37
 */

#ifndef ITRANSPONDUNIT_H
#define ITRANSPONDUNIT_H
#include "../Logic/Atomar/XandY.h"

class ITranspondUnit{
public:
    virtual ~ITranspondUnit(){};
    virtual XandY* transpond(const XandY&)=0;
    virtual XandY* regular()=0;
};

#endif /* ITRANSPONDUNIT_H */

