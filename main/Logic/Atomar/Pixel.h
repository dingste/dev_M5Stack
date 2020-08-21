/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Pixel.h
 * Author: dieter
 *
 * Created on 2. Juni 2020, 19:13
 */

#ifndef PIXEL_H
#define PIXEL_H
#include "XandY.h"

class Pixel : public XandY {
public:

    Pixel(int _x, int _y) : XandY(_x, _y) {
    };

    ~Pixel() {
    };

    bool getFill() {
        return fill;
    };

    void setFill(bool fill) {
        this->fill = fill;
    };

    int getX() {
        return x;
    };

    int getY() {
        return y;
    };

  /*  bool operator==(const Pixel& compare) {
        //         std::cout <<"("<<compare.x<<"|"<<compare.y<<") "<< " ? "<<"("<<x<<"|"<<y<<") "<<std::endl;
        return (getX() == compare.x && getY() == compare.y) ? true : false;
    };*/

    private:
    bool fill;
};

#endif /* PIXEL_H */

