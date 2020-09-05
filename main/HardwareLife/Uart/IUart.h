/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   IUart.h
 * Author: bastian
 *
 * Created on 31. Januar 2020, 15:35
 */

#ifndef IUART_H
#define IUART_H
#include <stdint.h>



class IUart
{
public:
    virtual ~IUart()
    {

    };

    virtual bool write(const uint8_t* toWrite, int length)=0;
    virtual uint32_t read(uint8_t *const buf, const uint16_t length)=0;
    
};



#endif /* IUART_H */

