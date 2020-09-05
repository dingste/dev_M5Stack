/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   EierKarton.h
 * Author: dieter
 *
 * Created on 5. September 2020, 17:35
 */

#ifndef EIERKARTON_H
#define EIERKARTON_H
#include <map>
#include "Ei.h"
#include "DESCRIPTORS.h"

class EierKarton {
public:
    EierKarton();
    EierKarton(const EierKarton& orig);
    virtual ~EierKarton();
    void include(Ei*);
    Ei* getEi(std::string);
    Ei* getJournal();
    void setJournal(Ei*, bool);

private:
    const char startSign = '{';
    const char sepSign = ',';
    const char endSign = '}';

    std::map<std::string, std::string> karton;
    Ei* journalEi;
};

#endif /* EIERKARTON_H */

