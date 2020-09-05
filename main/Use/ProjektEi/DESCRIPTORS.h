/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   DESCRIPTORS.h
 * Author: dieter
 *
 * Created on 30. August 2020, 15:03
 */

#ifndef DESCRIPTORS_H
#define DESCRIPTORS_H

enum METHODS{
    METHOD_SEARCH,
    METHOD_CONNECT,
    METHOD_HANDSHAKE,
    METHOD_TRANSMIT,
    METHOD_SAVE,
    METHOD_CLOSE
};
  
enum SECURE{
    SEC_DECODE,
    SEC_ENCODE
};

enum OPERATIONS{
    OP_SET,
    OP_GET
};

enum ITEMS{
    ITEM_KEY,
    ITEM_ID,
    ITEM_MEDIA
};

enum MEDIA_TYPE{
    NONE,
    TEXT,
    PICTURE,
    SOUND,
    VIDEO,
    JOURNAL
};
#endif /* DESCRIPTORS_H */

