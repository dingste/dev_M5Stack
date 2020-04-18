/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   ILine.h
 * Author: dieter
 *
 * Created on 29. Dezember 2019, 01:41
 */

#ifndef ILINE_H
#define ILINE_H
#include <string>


using std::string;

class ILine{ 
public:
    virtual ~ILine() {

    }
    virtual void print(string toprint)=0;
};


#endif /* ILINE_H */

