/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   IWidget.h
 * Author: Dieter Steuten at <d.steuten@elk.de>
 *
 * Created on 5. November 2019, 10:57
 */

#ifndef IWIDGET_H
#define IWIDGET_H
#include <string>
#include <vector>
#include "../../../../Logic/Atomar/Pixel.h"
#include "../../Defines_Lcd.h"

extern "C" {
    //loading known functions 'as lib'
#include "../../../../../components/tft/tft.h"
}
//using namespace std;

class IWidget {
public:

    virtual ~IWidget() {

    }

    virtual void makeVisible() = 0;
    virtual void makeInvisible() = 0;
    virtual void print(const std::string text) = 0;
    virtual void print(int value) = 0;
    virtual void print(bool value) = 0;
    virtual void print(std::vector<Pixel*>) = 0;
    virtual IWidget* getWidget(const std::string title) = 0;
    virtual const std::string getWidget() = 0;
};

#endif /* IWIDGET_H */

