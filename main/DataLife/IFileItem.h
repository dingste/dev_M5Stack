/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   IFileItem.h
 * Author: dieter
 *
 * Created on 14. Februar 2020, 19:21
 */

#ifndef IFILEITEM_H
#define IFILEITEM_H

#include "Filetypes.h"
#include "Filerights.h"
#include <string>

class IFileItem{ 
public:
    virtual ~IFileItem() {

    }
    virtual Filetypes getFileType()=0;
    virtual std::string getFileContent()=0;
    virtual Filerights getFileRights()=0;
    virtual void setFileContent(std::string content)=0;
    virtual void setFileType(Filetypes type)=0;
    virtual void setFileRights(Filerights rights)=0;
};

#endif /* IFILEITEM_H */

