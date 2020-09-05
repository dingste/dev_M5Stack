/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   FileTypes.h
 * Author: dieter
 *
 * Created on 24. Juli 2020, 17:53
 */

#ifndef FILETYPES_H
#define FILETYPES_H
#include "string.h"
#include <stdio.h>
/*
struct FileType {
    / * all preset under: components/spiffs_image/image/dynamic * / 
    std::string CONFIG = "device.cfg";
    std::string WIFI = "wifi.cfg";
    std::string SENSORS = "sensors.cfg";
    std::string LOG = "debug.log";
    std::string VALUES = "apbuffer.log";
};

/ * following has to split in separate header .. maybe in common * /
struct SUPDATE {
    bool ARM_UPDATE_PROGRESS = false;
    bool armUpdateFlag_End = false;
    bool ESP_UPDATE_PROGRESS = false;
    bool espUpdateFlag_End = false;
};

struct SCONFIG {
    std::string deviceId;
    std::string releaseVer;
    SUPDATE updateProcess;
};

struct SWIFI {
    std::string ssid;
    std::string ssid_password;
    std::string endpointIp;
    std::string user;
    std::string user_password;
    std::string tlsCert;
    // maybe more MQTT stuff
};

struct SSENSORS {
    std::string flow1Point;
    std::string flow2Point;
    std::string flow3Point;
    std::string breath1Point;
    std::string breath2Point;
    std::string breath3Point;
    // and so on
};

struct SVALUES_SINGLE {
    std::string timestamp;
    std::string valuestruct;
};
*/
#endif /* FILETYPES_H */

