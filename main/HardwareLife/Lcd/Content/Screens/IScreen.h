/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   IScreen.h
 * Author: Dieter Steuten at <d.steuten@elk.de>
 *
 * Created on 5. November 2019, 10:57
 */

#ifndef ISCREEN_H
#define ISCREEN_H
#include <string>
#include "../Widgets/IWidget.h"

class IScreen
{
public:
    virtual ~IScreen()
    {

    }
    virtual bool changeScreen(const std::string screenTitle) =0;
    virtual bool removeWidget(const std::string title)=0;
    virtual void draw() = 0;
    virtual const std::string getTitle() = 0;
    virtual void addWidget(IWidget* widget) = 0;
    virtual IWidget* getWidget(const std::string title) = 0;
};

#endif /* ISCREEN_H */

