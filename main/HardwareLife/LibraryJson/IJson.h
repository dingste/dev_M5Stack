/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   IJson.h
 * Author: Dieter Steuten at <d.steuten@elk.de>
 *
 * Created on 5. August 2020, 14:38
 */

#ifndef IJSON_H
#define IJSON_H

#include "HardwareAbstractionLayer/JsonFileSystem/GetSetItem.h"

class IJson : public GetSetItem {
public:

    IJson(const char* filename) : GetSetItem(filename) {
    };
    virtual ~IJson(){};
};

#endif /* IJSON_H */

