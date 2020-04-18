/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   ISerial.h
 * Author: dieter
 *
 * Created on 10. November 2019, 22:44
 */

#ifndef IABSTRACTOR_H
#define IABSTRACTOR_H

#include "ISubscriber.h"
#include "IPublisher.h"



class IAbstractor : public ISubscriber, IPublisher{
public:
    virtual ~IAbstractor() {

    }
     

    
};

#endif /* ISERIAL_H */

