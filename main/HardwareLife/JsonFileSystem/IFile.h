/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   IFile.h
 * Author: Dieter Steuten at <d.steuten@elk.de>
 *
 * Created on 29. Juli 2020, 10:10
 */

#ifndef IFILE_H
#define IFILE_H

#include <string>

class IFile{
public:
    virtual ~IFile() {};
    virtual void setFile(const char* _fname) = 0;
    virtual std::string read()=0;
    virtual void write(std::string) =0;
};

#endif /* IFILE_H */

