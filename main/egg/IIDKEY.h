/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   IIDKEY.h
 * Author: dieter
 *
 * Created on 19. Juli 2020, 21:38
 */

#ifndef IIDKEY_H
#define IIDKEY_H
#include <stdio.h>
#include "SIDKEY.h"

class IIDKEY{
public:
    virtual void setId(std:string id)=0;
    virtual std:string getId()=0;

    virtual void setKey(std:string key)=0;
    virtual std:string getKey()=0;
}
#endif /* IIDKEY_H */

