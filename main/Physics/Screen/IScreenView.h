/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   IScreenView.h
 * Author: dieter
 *
 * Created on 6. Juni 2020, 16:37
 */

#ifndef ISCREENVIEW_H
#define ISCREENVIEW_H
#include "../ITranspondUnit.h"

class IScreenView:public ITranspondUnit{
    public:
    virtual ~IScreenView(){};
    virtual XandY* transpond(const XandY&) =0;
    virtual XandY* regular() = 0;
};


#endif /* ISCREENVIEW_H */

