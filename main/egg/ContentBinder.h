/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   ContentBinder.h
 * Author: dieter
 *
 * Created on 19. Juli 2020, 21:34
 */

#ifndef CONTENTBINDER_H
#define CONTENTBINDER_H
#include "IIDKEY.h"
#include "SMEDIA.h"

class ContentBinder : public IIDKEY {
public:
    ContentBinder(DESCRIPTOR::id* id);
    ContentBinder(const ContentBinder& orig);
    virtual ~ContentBinder();


    std::string getId();
    void setContent(MEDIA_TYPE* mediatype, std::string content);
    std::string getContent();
    MEDIA_TYPE* getMediaType();
    
protected:
    void setId(std::string id);

private:
    std::string id;
    MEDIA_TYPE* mediatype;
    std::string content;

};

#endif /* CONTENTBINDER_H */

