/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Wifi.h
 * Author: Dieter Steuten at <d.steuten@elk.de>
 *
 * Created on 10. Januar 2020, 14:53
 */

#ifndef WIFI_H
#define WIFI_H

#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <string.h>

#include "nvs_flash.h"

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/portmacro.h"
#include "freertos/event_groups.h"
#include "freertos/semphr.h"
#include "freertos/queue.h"

#include "esp_wifi.h"
#include "esp_bt.h"
#include "esp_system.h"
#include "esp_event.h"
#include "esp_event_loop.h"

#include "esp_log.h"
#include "esp_tls.h"

#include "driver/gpio.h"
#include "tcpip_adapter.h"


#include "lwip/err.h"
#include "lwip/sys.h"
#include "lwip/netdb.h"
#include "lwip/api.h"
#include "lwip/sockets.h"
#include "lwip/dns.h"

#define WIFI_IF_STA ESP_IF_WIFI_STA

static EventGroupHandle_t wifi_event_group;
const static bool CONNECTED_BIT = BIT0;
const static bool DISCONNECTED_BIT = BIT1;
const static bool WIFI_CONNECTED_BIT = BIT0;
const static bool WIFI_FAIL_BIT = BIT1;

static int s_retry_num;


class Wifi
{
public:
    Wifi();
    virtual ~Wifi();
    static void run(void *pvParameters) {
        ((Wifi*) pvParameters)->classrun();
    };
    void classrun();
    
private:
    bool running;
static esp_err_t event_handler(void *ctx, system_event_t *event);
};

#endif /* WIFI_H */

