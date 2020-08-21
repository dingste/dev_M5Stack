/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   ContentBinder.cpp
 * Author: dieter
 * 
 * Created on 19. Juli 2020, 21:34
 */

#include "ContentBinder.h"



ContentBinder::ContentBinder(DESCRIPTOR::id* id) {
    setId(id);
}

ContentBinder::ContentBinder(const ContentBinder& orig) {
}

ContentBinder::~ContentBinder() {
}

void ContentBinder::setId(std::string id) {
    this->id = id;
}

std::string ContentBinder::getId() {
    return id;
}

void ContentBinder::setContent(MEDIA_TYPE* mediatype,std::string content) {
    this->mediaType = mediaType;
    this->content = content;
}

std::string ContentBinder::getContent() {
    return content;
}
MEDIA_TYPE* ContentBinder::getMediaType(){
    return mediaType;
}