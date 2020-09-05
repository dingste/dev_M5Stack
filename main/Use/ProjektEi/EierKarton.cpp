/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   EierKarton.cpp
 * Author: dieter
 * 
 * Created on 5. September 2020, 17:35
 */

#include "EierKarton.h"
#include "../../Log.h"
#include <sstream>

EierKarton::EierKarton() {
    journalEi = new Ei();
}

EierKarton::EierKarton(const EierKarton& orig) {
}

EierKarton::~EierKarton() {
    delete journalEi;
}

void EierKarton::include(Ei* include) {
    include->operation(OPERATIONS::OP_GET, ITEMS::ITEM_ID, MEDIA_TYPE::TEXT);
    std::string id = include->content();
    include->operation(OPERATIONS::OP_GET, ITEMS::ITEM_MEDIA, MEDIA_TYPE::TEXT);
    std::string media = include->content();
//    DEBUGOUT << id <<" - "<<media <<std::endl;
    karton.insert(std::pair<std::string, std::string>(id, media));
}

Ei* EierKarton::getEi(std::string id) {
    std::map<std::string, std::string>::iterator karton_iterator;

    for (karton_iterator = karton.begin(); karton_iterator != karton.end(); karton_iterator++) {
        if (karton_iterator->first.compare(id)) {
            journalEi->content(karton_iterator->first);
            journalEi->operation(OPERATIONS::OP_SET, ITEMS::ITEM_ID, MEDIA_TYPE::TEXT);
            journalEi->content(karton_iterator->second);
            journalEi->operation(OPERATIONS::OP_SET, ITEMS::ITEM_MEDIA, MEDIA_TYPE::TEXT);
        }
    }

    return journalEi;
}

Ei* EierKarton::getJournal() {
    std::ostringstream out;
    std::map<std::string, std::string>::iterator karton_iterator;

    out << startSign;
    for (karton_iterator = karton.begin(); karton_iterator != karton.end(); karton_iterator++) {
        out << startSign << karton_iterator->first << sepSign << karton_iterator->second << endSign;
    }
    out << endSign;
    journalEi->content(out.str());
    journalEi->operation(OPERATIONS::OP_SET, ITEMS::ITEM_MEDIA, MEDIA_TYPE::JOURNAL);
 //   DEBUGOUT << out.str() <<std::endl;
    return journalEi;
}

void EierKarton::setJournal(Ei* journalEi, bool override = false) {
    //überschreiben? erweitern? id nicht vergessen!
    journalEi->operation(OPERATIONS::OP_GET, ITEMS::ITEM_MEDIA, MEDIA_TYPE::JOURNAL);
    if (true) { //journalEi->content().compare((std::string) MEDIA_TYPE::JOURNAL)) {

        journalEi->operation(OPERATIONS::OP_GET, ITEMS::ITEM_MEDIA, MEDIA_TYPE::TEXT);
        std::string content;
        char single;
        std::istringstream in(journalEi->content());

        in >> single;
        if (startSign == single) {
            in >> single;
            while (endSign != single) {
                if (startSign == single) {
                    getline(in, content, ',');
                    this->journalEi->content(content+"j");
                    this->journalEi->operation(OPERATIONS::OP_SET, ITEMS::ITEM_ID, MEDIA_TYPE::TEXT);

                    getline(in, content, '}');
                    this->journalEi->content(content+"j");
                    this->journalEi->operation(OPERATIONS::OP_SET, ITEMS::ITEM_MEDIA, MEDIA_TYPE::TEXT);
                    include(this->journalEi);
                    in >> single;
                }
            }
        }
    }
}