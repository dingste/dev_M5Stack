/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   LifeCycle.h
 * Author: dieter
 *
 * Created on 27. Dezember 2019, 18:41
 */

#ifndef LIFECYCLE_H
#define LIFECYCLE_H

#include "ILifeCycle.h"
//#include "Cycles.h"


class LifeCycle : public ILifeCycle{
public:
    LifeCycle();
    virtual ~LifeCycle();
private:
    CYCLES actualCycle;
    
    protected:
     CYCLES* getState() ;
     void setState(CHANGES to);


};

#endif /* LIFECYCLE_H */

