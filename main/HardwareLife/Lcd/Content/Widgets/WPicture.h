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

#ifndef WPICTURE_H
#define WPICTURE_H
#include "IWidget.h"
#include "Widget.h"

class WPicture : public IWidget {
public:
    WPicture(const std::string title, const std::string file, Position* position);
    virtual ~WPicture();

protected:
            void print(const std::string text) override;
    void print(int value) override;
    IWidget* getWidget(const std::string title) override;
    const std::string getWidget() override;
    void makeVisible() override;
    void makeInvisible() override;

private:
    Widget* widget;
    std::string file;
    std::string prePrintedText;
    JPGIODEV jpgdim; // Information container about loaded image
};

#endif /* WPICTURE_H */

