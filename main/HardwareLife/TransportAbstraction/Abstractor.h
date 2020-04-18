/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   SerialAbstraction.h
 * Author: Dieter Steuten at <d.steuten@elk.de>
 *
 * Created on 27. Mai 2019, 10:50
 */

#ifndef ABSTRACTOR_H
#define ABSTRACTOR_H
#include "ITransportAccess.h"
#include "IAbstractor.h"
#include "../../IdLife/Id.h"
#include "driver/uart.h"

//using namespace std;

class Abstractor : public IAbstractor
 {
public:
    Abstractor();
    virtual ~Abstractor();

    static void listen(void *pvParameters) {
        ((Abstractor*) pvParameters)->subscribe();
    };

protected:
    void subscribe() override;
    void publish() override;
 
private:

    Id* currentId;
    Id* bufferId;
    char* buffer;
};

#endif /* SERIALABSTRACTION_H */

