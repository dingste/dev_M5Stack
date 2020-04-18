/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   TechDevice.h
 * Author: dieter
 *
 * Created on 22. Februar 2020, 18:05
 */

#ifndef TECHDEVICE_H
#define TECHDEVICE_H
#include "ITechDevice.h"
//#include "WiFi/WiFi.h"
//#include "Key/Combinator.h"
//#include "TransportAbstraction/Abstractor.h"
//#include "TransportAbstraction/IAbstractor.h"
//#include "Gpio/Kiss/Kiss.h"
//#include "TransportAbstraction/ITransportAccess.h"




class TechDevice : public ITechDevice{
public:
    TechDevice(uart_port_t num, int rx, int tx, Id* ownId);
    TechDevice(const TechDevice& orig);
    virtual ~TechDevice();
private:
//WiFi* wifi = new WiFi();
   //     ITransportAccess* uarthandler = new Uart(16, 17, UART_NUM_2);
  //  IId* bobDevice = new Combinator();
//IAbstractor* serialBob = new Abstractor(UART_NUM_2, BOB_MASTER_PIN, 17, bobId);
//IKiss* bobskiss = new Kiss(BOB_MASTER_PIN);
};

#endif /* TECHDEVICE_H */

