/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Dev.cpp
 * Author: dieter
 * 
 * Created on 14. Februar 2020, 18:38
 */

#include "Combinator.h"

Combinator::Combinator() {
    setId("device1","12345");
}

Combinator::Combinator(const Combinator& orig) {
    setId(orig.name, orig.key);
}

Combinator::~Combinator() {
    name ="";
    key="";
}

std::string Combinator::getKey() {
    return key;
   
}

std::string Combinator::getName() {
    return name;
}

void Combinator::setId(std::string name, std::string key) {
    this->name = name;
    this->key = key;
}



