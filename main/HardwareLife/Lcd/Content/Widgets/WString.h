/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   WString.h
 * Author: Dieter Steuten at <d.steuten@elk.de>
 *
 * Created on 24. April 2020, 16:12
 */

#ifndef WSTRING_H
#define WSTRING_H
#include "IWidget.h"
#include "Widget.h"

class WString: public IWidget
{
public:
    WString(const std::string title, Position* position);
    virtual ~WString();

    protected:
            void print(const std::string text) override;
    void print(int value) override;
    IWidget* getWidget(const std::string title) override;
    const std::string getWidget() override;
    void makeVisible() override;
    void makeInvisible() override;

private:
    Widget* widget;
    std::string prePrintedText;

};

#endif /* WSTRING_H */

