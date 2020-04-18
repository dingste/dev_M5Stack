/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   TopLine.h
 * Author: dieter
 *
 * Created on 29. Dezember 2019, 00:14
 */

#ifndef TOPLINE_H
#define TOPLINE_H
#include "../ILine.h"


class TopLine : public ILine{
public:
    TopLine(uint16_t width, uint16_t height);
    virtual ~TopLine();

private:
    uint16_t width;
    uint16_t height;
    string content;
protected:
    void print(string toprint);

};

#endif /* TOPLINE_H */

