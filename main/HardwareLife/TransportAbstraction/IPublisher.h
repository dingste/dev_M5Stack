/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   IPublisher.h
 * Author: dieter
 *
 * Created on 14. März 2020, 18:56
 */

#ifndef IPUBLISHER_H
#define IPUBLISHER_H
class IPublisher{
    virtual ~IPublisher() {
    }

    void publish() = 0;
};


#endif /* IPUBLISHER_H */

