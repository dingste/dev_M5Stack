/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   ISubscriber.h
 * Author: dieter
 *
 * Created on 14. März 2020, 18:57
 */

#ifndef ISUBSCRIBER_H
#define ISUBSCRIBER_H
class ISubscriber{
    virtual ~ISubscriber() {
    }

    void subscribe() = 0;
};


#endif /* ISUBSCRIBER_H */

