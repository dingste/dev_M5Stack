/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   LifeCycle.cpp
 * Author: dieter
 * 
 * Created on 27. Dezember 2019, 18:41
 */

#include "LifeCycle.h"

LifeCycle::LifeCycle()
{
}

LifeCycle::~LifeCycle()
{
}

CYCLES *LifeCycle::getState()
{
    return &actualCycle;
}

void LifeCycle::setState(CHANGES to)
{
    switch (actualCycle)
    {
    case CYCLES::ACTUALBLASE:
        if (to == CHANGES::toCHANGEBLASE)
        {
            actualCycle = CYCLES::CHANGEBLASE;
        }
        break;
    case CYCLES::CHANGEBLASE:
        if (to == CHANGES::toACTUALBLASE)
        {
            actualCycle = CYCLES::ACTUALBLASE;
        }
        break;
    case CYCLES::CONNECTED:
        if (to == CHANGES::toACTUALBLASE)
        {
            actualCycle = CYCLES::ACTUALBLASE;
        }
        break;
    case CYCLES::CONNECTING:
        if (to == CHANGES::toCONNECTED)
        {
            actualCycle = CYCLES::CONNECTED;
        }
        break;
    case CYCLES::READY:
        if (to == CHANGES::toSTART)
        {
            actualCycle = CYCLES::START;
        }
        break;
    case CYCLES::START:
        if (to == CHANGES::toCONNECTING)
        {
            actualCycle = CYCLES::CONNECTING;
        }
        break;
    default:
        actualCycle = CYCLES::READY;
        break;
    }
}
