/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   IGpio.h
 * Author: dieter
 *
 * Created on 28. Dezember 2019, 00:18
 */

#ifndef IGPIO_H
#define IGPIO_H


class IGpio{
public:
    virtual ~IGpio() {};
    virtual bool pending() =0;
    virtual bool connected()=0;
    virtual int duration()=0;
    virtual int getNumber()=0;
    virtual void setONOFF(bool)=0;
};


#endif /* IGPIO_H */

