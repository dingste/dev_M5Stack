/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   FileItem.h
 * Author: dieter
 *
 * Created on 14. Februar 2020, 19:23
 */

#ifndef FILEITEM_H
#define FILEITEM_H

#include "IFileItem.h"
#include "Filerights.h"
#include "../IdLife/IId.h"

class FileItem : public IFileItem, public IId {
public:
    FileItem();
    FileItem(const FileItem& orig);
    virtual ~FileItem();

protected:
    void setFileContent(std::string content) override;
    std::string getFileContent() override;
    void setFileType(Filetypes type) override;
    Filetypes getFileType() override;
    void setFileRights(Filerights rights) override;
    Filerights getFileRights() override;


private:
    std::string getKey() override;
    std::string getName() override;
    void setId(std::string name, std::string key) override;
    std::string content;
    Filetypes filetype;
    Filerights fileright;
    std::string name;
    std::string key;
    Authenticator* auth = new Authenticator();
};

#endif /* FILEITEM_H */

