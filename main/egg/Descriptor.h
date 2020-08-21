/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Descriptor.h
 * Author: dieter
 *
 * Created on 19. Juli 2020, 20:52
 */

#ifndef DESCRIPTOR_H
#define DESCRIPTOR_H
#include "IIDKEY.h"

class AdressedKey  : public IIDKEY{
public:
    AdressedKey(DESCRIPTOR* description);
    AdressedKey(const AdressedKey& orig);
    virtual ~AdressedKey();
    
protected:
    void setId(std::string id);
    std::string getId();

    void setKey(std::string key);
    std::string getKey();
    
private:
    std::string id;
    std::string key;

#endif /* DESCRIPTOR_H */

