/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Ei.h
 * Author: dieter
 *
 * Created on 30. August 2020, 16:42
 */

#ifndef EI_H
#define EI_H
#include "DESCRIPTORS.h"
#include <string>
#include <algorithm>  //for std::generate_n
/*
 Ei:
 ID [hash] & MEDIA [encrypted content]
 * 
 */

class Ei {
public:
    Ei();
    Ei(const Ei& orig);
    virtual ~Ei();

    void operation(OPERATIONS, ITEMS, MEDIA_TYPE);
    std::string content();
    void content(std::string);
    Ei* getEi();
    
private:
    std::string id;
    std::string key;
    MEDIA_TYPE mediatype;
    std::string media;
    std::string holycontent;
    
    std::string random_string( size_t length )
{
    auto randchar = []() -> char
    {
        const char charset[] =
        "0123456789"
        "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        "abcdefghijklmnopqrstuvwxyz";
        const size_t max_index = (sizeof(charset) - 1);
        return charset[ rand() % max_index ];
    };
    std::string str(length,0);
    std::generate_n( str.begin(), length, randchar );
    return str;
}
};

#endif /* EI_H */

