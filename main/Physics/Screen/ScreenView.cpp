/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   ScreenView.cpp
 * Author: dieter
 * 
 * Created on 6. Juni 2020, 16:36
 */

#include "ScreenView.h"

ScreenView::ScreenView(int x, int y) {
    scale = new XandY(x,y);
}

ScreenView::~ScreenView() {
    delete scale;
}

 XandY* ScreenView::transpond(const XandY& from) {
    return scale->operator /(from);

 }

  XandY* ScreenView::regular() {
    return scale;

 }