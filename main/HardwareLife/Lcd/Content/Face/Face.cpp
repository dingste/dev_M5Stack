/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Face.cpp
 * Author: dieter
 * 
 * Created on 19. Oktober 2019, 23:25
 */

#include "Face.h"
#include <stdio.h>

Face::Face(uint16_t width, uint16_t height) : width(width), height(height) {
    TFT_fillWindow(TFT_BLACK);
    itembits = new ItemBits();
}

Face::~Face() {
}

void Face::blink() {
    // TFT_fillWindow(TFT_BLACK);

    drawItem(quadrantTop(1, height, width), itembits->getItem(EYELOOKLEFT));
    drawItem(quadrantTop(3, height, width), itembits->getItem(EYELOOKLEFT));
    drawItem(quadrantTop(4, height, width), itembits->getItem(RIGHTMOUTHUP));
    drawItem(quadrantTop(2, height, width), itembits->getItem(LEFTMOUTHDOWN));
    drawItem(quadrantTop(5, height, width), itembits->getItem(MOUTHOPEN));
}

void Face::lookLeft() {

}

void Face::lookRight() {

}

void Face::sad() {

}

void Face::sleep() {

}

void Face::smile() {
}

void Face::drawItem(point* pointToDraw, bool* itemArray) {
    int16_t column = 0;
    uint8_t factor = 4;

    for (int16_t x = (pointToDraw->xp - (8 * factor)); x < (pointToDraw->xp + (8 * factor)); x += factor) {
        for (int16_t y = (pointToDraw->yp - (8 * factor)); y < (pointToDraw->yp + (8 * factor)); y++) {
            if (itemArray[column / factor] == 1 /*&& actualItems[y][x]==false*/) {
                TFT_fillCircle(y, x, factor, TFT_WHITE);
        //        actualItems[y][x] = true;
            } else if (itemArray[column / factor] == 0 /*&& actualItems[y][x]*/) {
                TFT_fillCircle(y, x, factor, TFT_BLACK);
          //       actualItems[y][x] = false;
            }
            column++;
        }

    }
    
}

point* Face::quadrantTop(uint8_t quadrant, uint16_t width, uint16_t height) {
    point* calcPoints = new point;
    switch (quadrant) {
        case 1:
            calcPoints->xp = width * 3 / 8;
            calcPoints->yp = height * 3 / 8;
            break;
        case 2:
            calcPoints->xp = width * 3 / 4;
            calcPoints->yp = height * 3 / 8;
            break;
        case 3:
            calcPoints->xp = width * 3 / 8;
            calcPoints->yp = height * 5 / 8;
            break;
        case 4:
            calcPoints->xp = width * 3 / 4;
            calcPoints->yp = height * 5 / 8;
            break;
        case 5:
            calcPoints->xp = width * 3 / 4;
            calcPoints->yp = height * 2 / 4;
            break;
        default:
            break;
    }
    return calcPoints;
}



