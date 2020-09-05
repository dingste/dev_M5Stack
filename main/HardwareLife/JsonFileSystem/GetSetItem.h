/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   GetSetItem.h
 * Author: dieter
 *
 * Created on 31. Juli 2020, 11:06
 */

#ifndef GETSETITEM_H
#define GETSETITEM_H
#include <iostream>
#include "HardwareAbstractionLayer/JsonFileSystem/IFile.h"
#include "TransportLayer/LibraryJson/jsl-parser.h"
#include "HardwareAbstractionLayer/JsonFileSystem/JsonFileSystem.h"

class GetSetItem
{
public:

    GetSetItem(const char* _filename) : filename(_filename)
    {
        jsonfile = new JsonFileSystem(filename);
        jsl_data_pool::init(100, 10, 10);
        std::stringstream contentStream(jsonfile->read());
        jsl_parser parser(contentStream);
        data = parser.parse();
        
        contentStream.flush();
        contentStream.sync_with_stdio();
        //If you want to see    data->encode(std::cout, true, "");
    };

    virtual ~GetSetItem()
    {
        delete jsonfile;
        jsl_data_pool::init(0, 0, 0);
    };

    template<typename T>
    void getITEM(const char* topic, T& value)
    {
        if (data != nullptr) {
            data->get(topic, value);
        }
    };

    template<typename T>
    void setITEM(std::string topic, const T& value)
    {
        if (data != nullptr) {
            jsl_data_scal sdata(value, *data->find(topic)->second);
            data->set_prop(topic, sdata);
            std::ostringstream os;
            data->encode(os, true, "");
        //std::cout << "set " << os.str() << std::endl;
            jsonfile->write(os.str());
            data->fire();
            
         //   os.flush();
         //   os.sync_with_stdio();
        }
    };

private:
    const char* filename;
    IFile* jsonfile;
    jsl_data_dict* data;

};

#endif /* GETSETITEM_H */

