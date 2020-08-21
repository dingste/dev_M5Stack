/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Position.h
 * Author: Dieter Steuten at <d.steuten@elk.de>
 *
 * Created on 8. April 2020, 09:06
 */

#ifndef POSITION_H
#define POSITION_H
#include <stdint.h>

class Position
{
public:
    Position(int x, int y);
    virtual ~Position();

    int x = 0;
    int y = 0;
    int xPost = 0;
    int yPost = 0;
    int width = 0;
    int height = 0;

    
    
private:

};

#endif /* POSITION_H */

