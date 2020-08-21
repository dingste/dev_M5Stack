/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   BrushlessMotor.cpp
 * Author: dieter
 * 
 * Created on 30. Mai 2020, 19:01
 */

#include "BrushlessMotor.h"

BrushlessMotor::BrushlessMotor() {
    battery_charge = 100;
    direction = DriveTo::D_12_oClock;
}

BrushlessMotor::~BrushlessMotor() {
}

int BrushlessMotor::way2time(int way) {
    return (1);
}

int BrushlessMotor::time2way(int time) {
    return (1);
}

void BrushlessMotor::setDirection(DriveTo direction) {
    this->direction = direction;
}
