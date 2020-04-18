/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   WiFi.cpp
 * Author: dieter
 * 
 * Created on 2. Januar 2020, 23:24
 */

#include "WiFi.h"
#include <stdio.h>
#include <iostream>

WiFi::WiFi() {
}

WiFi::~WiFi() {
}

void WiFi::monitoring_task()
{
            	/* start the wifi manager */
	wifi_manager_start();
                	/* register a callback as an example to how you can integrate your code with the wifi manager */
	wifi_manager_set_callback(EVENT_STA_GOT_IP, &cb_connection_ok);
	for(;;){
		std::cout << "monitor\n";
		vTaskDelay( pdMS_TO_TICKS(10000) );
	}
}


/* brief this is an exemple of a callback that you can setup in your own app to get notified of wifi manager event */
 void cb_connection_ok(void *pvParameter){
	std::cout << "I have a connection!\n";
}

