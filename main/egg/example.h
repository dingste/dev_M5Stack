/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   example.h
 * Author: dieter
 *
 * Created on 23. Juli 2020, 21:55
 */

#ifndef EXAMPLE_H
#define EXAMPLE_H
#include "ContentBinder.h"
#include "Descriptor.h"
class example {
public:
    example();
    example(const example& orig);
    virtual ~example();
    void proceed();
    
private:
/* id - type - content */ ContentBinder* content;
/* id - key */ AdressedKey* description;
};

#endif /* EXAMPLE_H */

