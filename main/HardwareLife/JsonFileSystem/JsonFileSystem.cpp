/* Create: 9. Januar 2020
 * File:   JsonFileSystem.cpp
 * Author: Dieter Steuten at <d.steuten@elk.de> @ ELK GmbH, Krefeld
 */
#include "JsonFileSystem.h"
#include <iostream>
#include <fstream>
#include <time.h>
#include <errno.h>
#include <sys/fcntl.h>
//#include <stdlib.h>
//#include <spiffs_vfs.h>
//#include "esp_system.h"
//#include "driver/gpio.h"
//#include "esp_system.h"
//#include "esp_heap_caps.h"

JsonFileSystem::JsonFileSystem(const char* _fname) {
    fname = _fname;
    vfs_spiffs_register();
}

JsonFileSystem::~JsonFileSystem() {
}

void JsonFileSystem::setFile(const char* _fname) {
    fname = _fname;
}

std::string JsonFileSystem::read() {
    load_file(fname, fileContent);
    return fileContent;
}

void JsonFileSystem::write(std::string toWrite) {
    //std::cout << toWrite << " to: " << fname << std::endl;
    std::ofstream file(fname, std::ios::binary);
    if (file.is_open()) {
        file << toWrite;
    }

}

bool JsonFileSystem::load_file(const char* _fname, std::ostringstream& _dest) {
    std::ifstream file(_fname, std::ios::binary);
    if (file.is_open()) {
        _dest << file.rdbuf();
        file.close();
	_dest.sync_with_stdio();
        return true;
    }
    return false;
}

bool JsonFileSystem::load_file(const char* _fname, std::string& _dest) {
    std::ostringstream buf;

    if (!load_file(_fname, buf)) return false;

    _dest = buf.str();

    buf.flush();
    buf.sync_with_stdio();
    return true;
}
