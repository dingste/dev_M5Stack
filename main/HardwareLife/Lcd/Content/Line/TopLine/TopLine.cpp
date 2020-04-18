/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   TopLine.cpp
 * Author: dieter
 * 
 * Created on 29. Dezember 2019, 00:14
 */

#include "TopLine.h"
extern "C" {
#include "../../../../../../components/tft/tft.h"
}

TopLine::TopLine(uint16_t width, uint16_t height):width(width), height(height) {
    content = "";
    print("~~~");
}

TopLine::~TopLine() {
}

void TopLine::print(string content) {
    if (content.compare(this->content) != 0) {
        TFT_setFont(DEJAVU18_FONT, NULL);
        _fg = TFT_BLACK;
        TFT_print((char*) this->content.c_str(), CENTER, 10);

        _fg = TFT_OLIVE;
        TFT_print((char*) content.c_str(), CENTER, 10);
        this->content = content;
    }
}


