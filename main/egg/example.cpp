/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   example.cpp
 * Author: dieter
 * 
 * Created on 23. Juli 2020, 21:55
 */

#include "example.h"

example::example() {
    DESCRIPTOR* descriptor = new DESCRIPTOR();
    descriptor->id = "1";
    descriptor->key = "a";
    content = new ContentBinder(descriptor->id);
    /* encode content ! */
    description = new AdressedKey(descriptor);
    
}

example::example(const example& orig) {
}

example::~example() {
}

void example::proceed(){
    
}
