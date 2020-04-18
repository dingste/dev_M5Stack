/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

#include "Id.h"


Id::Id() {
    name = "none";
    key = "0000";
}
Id::Id(string name, string key):name(name),key(key){}

Id::~Id() {
    name ="";
    key="";
}


string Id::getKey() {
    return key;
}

string Id::getName() {
    return name;
}

void Id::setId(const string name, const string key) {
    this->name = name;
    this->key = key;
}



