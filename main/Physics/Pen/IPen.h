     /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   IPen.h
 * Author: dieter
 *
 * Created on 31. Mai 2020, 00:44
 */

#ifndef IPEN_H
#define IPEN_H
#include "../ITranspondUnit.h"

class IPen: public ITranspondUnit{
public:
    virtual ~IPen(){};
        virtual XandY* transpond(const XandY&) = 0;
    virtual XandY* regular() = 0;
};

#endif /* IPEN_H */

