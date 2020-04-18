/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   WiFi.h
 * Author: dieter
 *
 * Created on 2. Januar 2020, 23:24
 */

#ifndef WIFI_H
#define WIFI_H
#include <stdio.h>
//#include <string.h>
//#include "freertos/FreeRTOS.h"
//#include "freertos/task.h"
//#include "esp_system.h"
//#include "esp_log.h"
#include "../../../components/esp32-wifi-manager/src/wifi_manager.h"

extern "C" {
   void wifi_manager_start(void);
    void cb_connection_ok(void *pvParameter);
}

class WiFi {
public:
    WiFi();
    virtual ~WiFi();

    static void listen(void *pvParameters) {
        ((WiFi*) pvParameters)->monitoring_task();
    };


    void monitoring_task();
};

#endif /* WIFI_H */

