/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Face.h
 * Author: dieter
 *
 * Created on 19. Oktober 2019, 23:25
 */

#ifndef FACE_H
#define FACE_H

#include "IFace.h"
#include "ItemBits.h"
#include <stdint.h>
#include <stdio.h>
#include <string>
extern "C" {
#include "../../../../../../components/tft/tft.h"
}
    
struct point {
    uint8_t xp;
    uint8_t yp;
};

class Face : public IFace{
public:
    Face(uint16_t width, uint16_t height);

    virtual ~Face();

private:
    uint16_t width;
    uint16_t height;
    
    point* quadrantTop(uint8_t quadrant, uint16_t width, uint16_t height);
    void drawItem(point* pointToDraw, bool* itemArray);

    ItemBits* itembits;
  //  bool actualItems[600][600] /*={{false}}*/;
    
protected:
    virtual void blink();

    virtual void lookLeft();

    virtual void lookRight();

    virtual void sad();

    virtual void sleep();

    virtual void smile();
};

#endif /* FACE_H */

