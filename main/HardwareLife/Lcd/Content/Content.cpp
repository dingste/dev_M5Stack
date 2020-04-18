/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Content.cpp
 * Author: dieter
 * 
 * Created on 29. Dezember 2019, 00:51
 */

#include "Content.h"
#include "Face/Face.h"
#include "Line/TopLine/TopLine.h"

Content::Content() : width(DEFAULT_TFT_DISPLAY_WIDTH), height(DEFAULT_TFT_DISPLAY_HEIGHT) {
    TftDisplayBackend();
    topline = new TopLine(width, height);
    lcdFace = new Face(width, height);
  //   TFT_fillWindow(TFT_BLACK);
}

Content::~Content() {
}

