/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   IPicture.h
 * Author: dieter
 *
 * Created on 15. Mai 2020, 20:50
 */

#ifndef IPICTURE_H
#define IPICTURE_H
#include <vector>
#include <stdio.h>
#include<bits/stdc++.h> 
#include "PixelAt.h"
#include "../Atomar/Pixel.h"
#include "../../Physics/ITranspondUnit.h"

class IPicture : public ITranspondUnit {
public:

    virtual ~IPicture() {
    };
    virtual PixelAt pixelAt(int) = 0;
    virtual Pixel* getNextPixel(int) = 0;
    virtual void oneToFalse(Pixel* point) = 0;
    virtual void oneToTrue(Pixel* point) = 0;
    virtual void print() = 0;
    virtual std::vector <Pixel*> getAll() = 0;
    virtual XandY* transpond(const XandY&) = 0;
    virtual XandY* regular() = 0;
};


#endif /* IPICTURE_H */

