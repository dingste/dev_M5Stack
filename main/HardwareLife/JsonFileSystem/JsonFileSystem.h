/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   JsonFileSystem.h
 * Author: Dieter Steuten at <d.steuten@elk.de>
 *
 * Created on 9. Januar 2020, 12:52
 */

#ifndef JSONFILESYSTEM_H
#define JSONFILESYSTEM_H

//#include "esp_log.h"
#include "IFile.h"
#include <iostream>
//#include <string>
#include <sstream>
#include <stdio.h>

#define PARSER_TEST_LOGTAG "PARSER-TEST :"

extern "C"{
       void vfs_spiffs_register();
}

class JsonFileSystem : public IFile
{
public:
    JsonFileSystem(const char* _fname);
    virtual ~JsonFileSystem();

protected:
    void setFile(const char* _fname) override;
    std::string read() override;
    void write(std::string) override;

private:
    bool load_file(const char* _fname, std::ostringstream& _dest);
    bool load_file(const char* _fname, std::string& _dest);
    bool fileIsOpen;
    const char* fname;
    std::string fileContent;
};

#endif /* FILESYSTEM_H */

