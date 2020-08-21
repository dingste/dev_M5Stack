/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Clock.cpp
 * Author: dieter
 * 
 * Created on 4. Juli 2020, 18:29
 */

#include "Clock.h"
#include "../../Log.h"

Clock::Clock() {
    isNtpPending = true;
    startNTP();
}

Clock::Clock(const Clock& orig) {

}

Clock::~Clock() {
}

bool Clock::startNTP() {
    sntp_setoperatingmode(SNTP_OPMODE_POLL);
    sntp_setservername(0, "pool.ntp.org");
    sntp_init();
    setenv("TZ", "CET-1CEST,M3.5.0,M10.5.0/3", 1);
    tzset();

    return isNtpPending;
}

char* Clock::getClock() {
    return strftime_buf;
}

bool Clock::isSleeping() {
    esp_sleep_wakeup_cause_t wakeup_reason = esp_sleep_get_wakeup_cause();
    switch (wakeup_reason) {
        case ESP_SLEEP_WAKEUP_EXT0:
            DEBUGOUT << "Button up\n";
            buildTime();
            return false;
            break;
        case ESP_SLEEP_WAKEUP_EXT1:
            printf("Wake up Ext1 \n");
            return false;
            break;
        case ESP_SLEEP_WAKEUP_GPIO:
            printf("Wake up GPIO \n");
            return false;
            break;
        case ESP_SLEEP_WAKEUP_TIMER:
        {
            printf("Wake up from timer. Time spent in deep sleep: \n");
            return false;
            break;
        }
        case ESP_SLEEP_WAKEUP_ULP:
        {
            printf("Wake up from ULP\n");
            return false;
            break;
        }
        case ESP_SLEEP_WAKEUP_UNDEFINED:
            printf(" deep sleep undefined %d\n", wakeup_reason);
            return false;
            break;
        default:
            printf("Not a deep sleep reset\n");
            return false;
    }
    //  

    return true;
}

void Clock::buildTime() {
    time(&now); //--> seconds
    localtime_r(&now, &timeinfo); // set timeinfo with now (seconds)
    strftime(strftime_buf, sizeof (strftime_buf), "%R", &timeinfo); //build your string
}

void Clock::sleep() {
    //   esp_deep_sleep(1000000LL * deep_sleep_sec);
    //  esp_sleep_enable_timer_wakeup(1000000LL * deep_sleep_sec);
    // esp_sleep_enable_ext1_wakeup(ext_wakeup_pin_1_mask | ext_wakeup_pin_2_mask, ESP_EXT1_WAKEUP_ANY_HIGH);
      esp_sleep_enable_ext0_wakeup(GPIO_NUM_35, 0);
    //  esp_sleep_enable_gpio_wakeup();
    //  esp_sleep_enable_ulp_wakeup();
         esp_deep_sleep_start();
}