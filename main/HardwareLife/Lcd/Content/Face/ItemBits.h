/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   ItemBits.h
 * Author: dieter
 *
 * Created on 2. Februar 2020, 19:13
 */

#ifndef ITEMBITS_H
#define ITEMBITS_H
#include <map>
#define BITMAPSIZE 16

enum ITEMACTION : char {
    EYECLOSED,
    EYELOOKLEFT,
    EYELOOKRIGHT,
    MOUTHOPEN,
    MOUTHCLOSED,
    LEFTMOUTHOPEN,
    LEFTMOUTHCLOSED,
    LEFTMOUTHUP,
    LEFTMOUTHDOWN,
    RIGHTMOUTHOPEN,
    RIGHTMOUTHCLOSED,
    RIGHTMOUTHUP,
    RIGHTMOUTHDOWN
};

class ItemBits {
public:
    ItemBits();
    virtual ~ItemBits();

    bool* getItem(ITEMACTION itemaction);
    
private:
    bool* tmpbitmap;
    std::map<char, bool*>bitmap;
    std::map<int, char*>itmap;
};

#endif /* ITEMBITS_H */

