/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Fineliner.cpp
 * Author: dieter
 * 
 * Created on 31. Mai 2020, 00:44
 */

#include "Fineliner.h"

Fineliner::Fineliner(int x, int y) {
    scale = new XandY(x, y);
}

Fineliner::~Fineliner() {delete scale;
}

XandY* Fineliner::transpond(const XandY& from) {
    return scale->operator/(from);
}

XandY* Fineliner::regular() {
    return scale;
}
