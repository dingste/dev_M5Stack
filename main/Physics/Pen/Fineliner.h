/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Fineliner.h
 * Author: dieter
 *
 * Created on 31. Mai 2020, 00:44
 */

#ifndef FINELINER_H
#define FINELINER_H
#include "IPen.h"

class Fineliner : public IPen {
public:
    Fineliner(int, int);
    virtual ~Fineliner();
    
private:
    XandY* scale;
protected:
    /* IPen */
         XandY* transpond(const XandY&);
     XandY* regular();
};

#endif /* FINELINER_H */

