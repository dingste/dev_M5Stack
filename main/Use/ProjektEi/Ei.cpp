/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Ei.cpp
 * Author: dieter
 * 
 * Created on 30. August 2020, 16:42
 */

#include "Ei.h"

Ei::Ei() {
    id = random_string(8); //should be hash
    key = "1";
    mediatype = MEDIA_TYPE::NONE;
    media = "";
}

Ei::Ei(const Ei& orig) {
    media = orig.media;
    id = random_string(8); //should be hash
    mediatype = orig.mediatype;
    holycontent = orig.holycontent;
}

Ei::~Ei() {
}

Ei* Ei::getEi() {
    return this;
}

std::string Ei::content() {
    return holycontent;
}

void Ei::content(std::string holycontent) {
    this->holycontent = holycontent;
}

void Ei::operation(OPERATIONS op, ITEMS item, MEDIA_TYPE mediaType) {
    switch (item) {
        case ITEMS::ITEM_ID:
            switch (op) {
                case OPERATIONS::OP_GET: 
                    holycontent = id;
                    break;
                case OPERATIONS::OP_SET:
                    id = holycontent;
                    break;
                default: break;
            }
            break;
        case ITEMS::ITEM_KEY:
            switch (op) {
                case OPERATIONS::OP_GET: 
                    holycontent = key;
                    break;
                case OPERATIONS::OP_SET:
                    key = holycontent;
                    break;
                default: break;
            }
            break;
        case ITEMS::ITEM_MEDIA:
            switch (op) {
                case OPERATIONS::OP_GET:
                    holycontent = media;
                    break;
                case OPERATIONS::OP_SET: 
                    media = holycontent;
                    break;
                default: break;
            }
            break;
        default: break;
    }

    switch (mediaType) {
        case MEDIA_TYPE::JOURNAL:

                        break;
        case MEDIA_TYPE::NONE: break;
        case MEDIA_TYPE::PICTURE: break;
        case MEDIA_TYPE::SOUND: break;
        case MEDIA_TYPE::TEXT: break;
        case MEDIA_TYPE::VIDEO: break;
        default: break;
    }
}