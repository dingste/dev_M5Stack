/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Content.h
 * Author: dieter
 *
 * Created on 29. Dezember 2019, 00:51
 */

#ifndef CONTENT_H
#define CONTENT_H
#include <stdint.h>
#include "Face/IFace.h"
#include "Line/ILine.h"

extern "C" {
    //loading known functions 'as lib'
#include "../../../../components/tft/tft.h"
    void TftDisplayBackend();
}

class Content {
public:
    Content();
    virtual ~Content();


    ILine* topline;
    IFace* lcdFace;
    
private:
    uint16_t width;
    uint16_t height;
    /*
        virtual bool* leftEye(ITEMSTATE);

        virtual bool* rightEye(ITEMSTATE);

        virtual bool* leftMouth(ITEMSTATE);

        virtual bool* rightMouth(ITEMSTATE);

        virtual void lookLeft();

        virtual void lookRight();

        virtual bool* midMouth(ITEMSTATE);

        virtual void blink();

        virtual void sad();

        virtual void sleep();

        virtual void smile();

        virtual void print(string toprint);
     */

};

#endif /* CONTENT_H */

