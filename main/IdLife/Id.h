/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Id.h
 * Author: dieter
 *
 * Created on 10. November 2019, 22:50
 */

#ifndef ID_H
#define ID_H
#include "IId.h"

#include <iostream>
#include <cstring>
#include "Auth/Authenticator.h"
using namespace std;

class Id : public IId {
public:
    Id();
    Id(string name, string key);
    ~Id();
    string getName();
    string getKey();
    void setId(string name, string key);

private:
    Authenticator* authenticator;
        std::string name;
    std::string key;
};

#endif /* ID_H */

