/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Picture.h
 * Author: dieter
 *
 * Created on 26. April 2020, 16:56
 */

#ifndef PICTURE_H
#define PICTURE_H

#include "IPicture.h"

class Picture : public IPicture {
public:
    Picture(int,int);
    virtual ~Picture();



    /*
     * void setPicture()
     * 
     */

protected:
    void oneToFalse(Pixel* point)override;
    void oneToTrue(Pixel* point)override;
    void print()override;
    std::vector <Pixel*> getAll()override;
    PixelAt pixelAt(int)override;
    Pixel* getNextPixel(int)override;
    XandY* transpond(const XandY&);
         XandY* regular();
private:

    Pixel* actualPoint;
        XandY* scale;
    std::vector <Pixel*> pointmap;
    std::vector <Pixel*>::iterator pointmapIter;
};

#endif /* PICTURE_H */

