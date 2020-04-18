/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   IId.h
 * Author: dieter
 *
 * Created on 7. Dezember 2019, 13:12
 */

#ifndef IID_H
#define IID_H
#include <string.h>
#include <iostream>

#include "Auth/Authenticator.h"

class IId {
public:
 
    virtual ~IId() {
    };
    virtual std::string getName() = 0;
    virtual std::string getKey() = 0;
    virtual void setId(std::string name, std::string key) = 0;

    Authenticator* auth=nullptr; 
    
    friend std::ostream& operator<<(std::ostream& os, IId& entry) {
        os << "{" << entry.getName() << "},{" << entry.getKey() << "}";
        return os;
    };

    friend std::istream& operator>>(std::istream& is, IId& entry) {
        std::string once = "operator";
        std::getline(is, once);
          std::cout << ":: " << once <<" ::\n";
       // entry.setId(once, "xxooxx");

        return is;
    };

};

#endif /* IID_H */

