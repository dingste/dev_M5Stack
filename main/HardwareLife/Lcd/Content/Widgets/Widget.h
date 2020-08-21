/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Widget.h
 * Author: Dieter Steuten at <d.steuten@elk.de>
 *
 * Created on 5. November 2019, 10:57
 */

#ifndef WIDGET_H
#define WIDGET_H

#include <string>
#include "Position.h"
/*
#include "../../../HardwareAbstractionLayer/DefinesHardwareAbstractionLayer.h"

extern "C" {
    //loading known functions 'as lib'
#include "../../../../components/tft/tft.h"
}
*/
class Widget {
public:
    Widget(const std::string title, Position* position);
    virtual ~Widget();
    bool isVisible();
    void makeVisible();
    void makeInvisible();
    void setPosition(Position* position);
    Position* getPosition();
    Widget* getWidget(const std::string title);
    const std::string getWidget();

private:
    Position* widgetPosition;
    bool visible = 0;
    std::string widgetTitle;





};

#endif /* WIDGET_H */

