/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Descriptor.cpp
 * Author: dieter
 * 
 * Created on 19. Juli 2020, 20:52
 */

#include "Descriptor.h"

AdressedKey::AdressedKey(DESCRIPTOR* description) {
    setId(description->id);
    setKey(description->key);
}

AdressedKey::AdressedKey(const AdressedKey& orig) {
}

AdressedKey::~AdressedKey() {
}

void AdressedKey::setId(std::string id) {
    this->id = id;
}

std::string AdressedKey::getId() {
    return id;
}

void AdressedKey::setKey(std::string key) {
    this->key = key;
}

std::string AdressedKey::getKey() {
    return key;
}

