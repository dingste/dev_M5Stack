/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   ILifeCycle.h
 * Author: dieter
 *
 * Created on 27. Dezember 2019, 18:37
 */

#ifndef ILIFECYCLE_H
#define ILIFECYCLE_H
#include "Cycles.h"
#include "Changes.h"

class ILifeCycle
{
public:
    virtual ~ILifeCycle()
    {

    };

    virtual CYCLES* getState() =0;
    virtual void setState(CHANGES to)=0;
};

#endif /* ILIFECYCLE_H */

