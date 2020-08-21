/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   WNumber.h
 * Author: Dieter Steuten at <d.steuten@elk.de>
 *
 * Created on 24. April 2020, 14:51
 */

#ifndef WNUMBER_H
#define WNUMBER_H

#include "IWidget.h"
#include "Widget.h"

class WNumber : public IWidget {
public:
    WNumber(const std::string title, Position* position);
    virtual ~WNumber();

protected:
    void print(const std::string text) override;
    void print(int value) override;
     void print(std::vector<XandY*>);
    IWidget* getWidget(const std::string title) override;
    const std::string getWidget() override;
    void makeVisible() override;
    void makeInvisible() override;

private:
    Widget* widget;
    int value;
    std::string prePrintedText;
    bool conditionValueChanged(int value);
    bool conditionOneDigitValue(int value);
    bool conditionDotFive(int value);
    void printHalfOfValue(Position* positionNearAtFull);
};

#endif /* WNUMBER_H */

