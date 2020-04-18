/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   FileItem.cpp
 * Author: dieter
 * 
 * Created on 14. Februar 2020, 19:23
 */

#include "FileItem.h"

FileItem::FileItem() {
    name = "afile";
    key ="abcde";
    content = "nothing in here";
    filetype = Filetypes::plain;
    fileright = Filerights::rw;
}

FileItem::FileItem(const FileItem& orig) {
}

FileItem::~FileItem() {
}

std::string FileItem::getFileContent() {
    if (fileright != Filerights::deny)
        return content;
    else return "DENIED";
}

Filetypes FileItem::getFileType() {
    return filetype;
}

void FileItem::setFileContent(std::string content) {
    if (fileright == Filerights::rw || fileright == Filerights::w) {
        this->content = content;
    }
}

void FileItem::setFileType(Filetypes type) {
    this->filetype = type;
}

Filerights FileItem::getFileRights() {
    return fileright;
}

void FileItem::setFileRights(Filerights rights) {
    this->fileright = rights;
}

std::string FileItem::getKey() {
    return key;
}

std::string FileItem::getName() {
    return name;
}

void FileItem::setId(std::string name, std::string key) {
    this->name = name;
    this->key = key;
}
