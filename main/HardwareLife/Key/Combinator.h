/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Dev.h
 * Author: dieter
 *
 * Created on 14. Februar 2020, 18:38
 */

#ifndef COMBINATOR_H
#define COMBINATOR_H

#include "../../IdLife/IId.h"
#include "../../IdLife/Auth/Authenticator.h"

class Combinator : public IId {
public:
    Combinator();
    Combinator(const Combinator& orig);
    virtual ~Combinator();

protected:
    std::string getKey() override;
    std::string getName() override;
    void setId(std::string name, std::string key) override;


private:
    Authenticator* authenticator;
    std::string name;
    std::string key;
};

#endif /* DEV_H */

