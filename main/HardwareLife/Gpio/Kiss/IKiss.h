/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   IKiss.h
 * Author: dieter
 *
 * Created on 28. Dezember 2019, 18:54
 */

#ifndef IKISS_H
#define IKISS_H


class IKiss{ 
public:
    virtual ~IKiss() {

    }
    virtual void toKiss()=0;
    virtual bool onKiss()=0;
};
#endif /* IKISS_H */

