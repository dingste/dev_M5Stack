/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Authenticator.h
 * Author: dieter
 *
 * Created on 14. Februar 2020, 18:47
 */

#ifndef AUTHENTICATOR_H
#define AUTHENTICATOR_H
#include <string>

#include "Requester.h"
#include "Prozessor.h"

class Authenticator :public Requester,public Prozessor{
public:
    Authenticator();
    virtual ~Authenticator();
    bool authenticate(std::string aliceKey, std::string bobKey);
     
private:
    std::string key;
};

#endif /* AUTHENTICATOR_H */

