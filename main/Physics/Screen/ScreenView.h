/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   ScreenView.h
 * Author: dieter
 *
 * Created on 6. Juni 2020, 16:36
 */

#ifndef SCREENVIEW_H
#define SCREENVIEW_H
#include "IScreenView.h"

class ScreenView : public IScreenView {
public:
    ScreenView(int,int);
    virtual ~ScreenView();
    
private:
    const int HEIGHT = 100;
    const int WIDTH = 120;
    XandY* scale;

protected:
    XandY* transpond(const XandY&);
     XandY* regular();
};

#endif /* SCREENVIEW_H */

