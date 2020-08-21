/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   WPicture.h
 * Author: Dieter Steuten at <d.steuten@elk.de>
 *
 * Created on 24. April 2020, 16:14
 */

#ifndef WMONOPIC_H
#define WMONOPIC_H
#include "IWidget.h"
#include "Widget.h"
#include "../../../../Logic/Atomar/Pixel.h"

class WMonoPic : public IWidget {
public:
    WMonoPic(const std::string title,Position* position);
    virtual ~WMonoPic();

protected:
    void print(bool value) override;
    void print(std::vector<Pixel*>) override;
         void print(const std::string text){};
     void print(int value) {};

    
    IWidget* getWidget(const std::string title) override;
    const std::string getWidget() override;
    void makeVisible() override;
    void makeInvisible() override;

private:
    Widget* widget;
    std::string prePrintedText;
};

#endif /* WPICTURE_H */

