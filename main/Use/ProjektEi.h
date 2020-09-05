/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   ProjektEi.h
 * Author: dieter
 *
 * Created on 30. August 2020, 14:29
 */

#ifndef PROJEKTEI_H
#define PROJEKTEI_H
#include "ProjektEi/DESCRIPTORS.h"
#include "ProjektEi/Ei.h"
#include "ProjektEi/EierKarton.h"

//#include "../HardwareLife/Lcd/Content/Screens/Screen.h"
//#include "../HardwareLife/Lcd/Content/Widgets/Position.h"
//#include "../HardwareLife/Lcd/Content/Widgets/WString.h"
//#include "../HardwareLife/Lcd/Content/Widgets/WNumber.h"
//#include "../HardwareLife/Lcd/Content/Widgets/WPicture.h"
//#include "../HardwareLife/Lcd/Content/Widgets/WMonoPic.h"
//#include "../components/tft/tft.h"
//#include "../HardwareLife/Lcd/Defines_Lcd.h"
#include "../HardwareLife/Gpio/IGpio.h"
#include "../HardwareLife/Uart/IUart.h"
#include "driver/gpio.h"
class ProjektEi {
public:
    ProjektEi(gpio_num_t rx, gpio_num_t tx);
    virtual ~ProjektEi();
    
private:
    METHODS* actualMethod;
    ITEMS* actualItem;
    
    IGpio* txPin;
    IGpio* rxPin;
    
    IUart* serialLine;
    
    Ei* einEi;
    EierKarton* karton;
    /* id - type - content * / ContentBinder* content;
    
/ *
 1* file system
 ids 
 keys
 journal
 gui: see methods, ids, keys, journal
 */
};

#endif /* PROJEKTEI_H */

