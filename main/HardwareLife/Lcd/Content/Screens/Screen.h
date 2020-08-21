/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Screen.h
 * Author: Dieter Steuten at <d.steuten@elk.de>
 *
 * Created on 5. November 2019, 10:56
 */

#ifndef SCREEN_H
#define SCREEN_H

#include <map>
#include <string>
#include "IScreen.h"
#include "../Widgets/IWidget.h"

//extern "C"
//{
    //loading known functions 'as lib'
//#include "../../../../components/tft/tft.h"
//}

class Screen : public IScreen
{
public:
    Screen();
    virtual ~Screen();

    
private:
    std::string screenTitle;

    std::map<const std::string,IWidget*> screenContent;
    std::map<const std::string,IWidget*>::iterator contentIterator;

protected:
    bool changeScreen(const std::string screenTitle) override;
    bool removeWidget(const std::string title) override;
    void addWidget(IWidget* widget) override;
    void draw() override;
    const std::string getTitle() override;
    IWidget* getWidget(const std::string title) override;
};

#endif /* SCREEN_H */

