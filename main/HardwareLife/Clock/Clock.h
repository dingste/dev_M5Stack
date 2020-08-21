/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Clock.h
 * Author: dieter
 *
 * Created on 4. Juli 2020, 18:29
 */

#ifndef CLOCK_H
#define CLOCK_H
#include "apps/sntp/sntp.h"
#include "driver/rtc_io.h"
#include "soc/rtc.h"
#include <stdio.h>
#include <string.h>

class Clock {
public:
    Clock();
    Clock(const Clock& orig);
    virtual ~Clock();
    
    bool startNTP();
    void buildTime();
    bool isSleeping();
    void sleep();
    char* getClock();
    
private:
    const int deep_sleep_sec = 10;
    int retry = 0;
    char strftime_buf[64];
    time_t now; // time()
    struct tm timeinfo = {0};
    bool isNtpPending = false;
};

#endif /* CLOCK_H */

