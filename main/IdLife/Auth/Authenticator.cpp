/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Authenticator.cpp
 * Author: dieter
 * 
 * Created on 14. Februar 2020, 18:47
 */

#include "Authenticator.h"


Authenticator::Authenticator() {
    key = "authKEY";
}

Authenticator::~Authenticator() {
    key = "";
}
bool Authenticator::authenticate(std::string aliceKey, std::string bobKey) {
   return true; //return (aliceKey.compare(bobKey) ==0)?true:false;
}

