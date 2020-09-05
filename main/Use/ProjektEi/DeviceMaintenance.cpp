/* Create: 5. August 2020
 * File:   DeviceMaintenance.cpp
 * Author: Dieter Steuten at <d.steuten@elk.de> @ ELK GmbH, Krefeld
 * /

#include "DeviceMaintenance.h"
#include "../../Log.h"

DeviceMaintenance::DeviceMaintenance() {
    maintenanceByAppStart = false;

    configuration_deviceboot = new IJson("/spiffs/dynamic/DeviceMain.json");
    configuration_deviceboot->getITEM("DEVICESTRING", DEVICESTRING);
    configuration_deviceboot->getITEM("RELEASENUMBER", RELEASENUMBER);
    delete configuration_deviceboot;
    configuration_parameter = nullptr;

    updater = new OTAUpdate;
    flags.ARM_UPDATE_PROGRESS = false;
    flags.ESP_UPDATE_PROGRESS = false;
    INIT << DEVICESTRING << " with Version " << RELEASENUMBER << std::endl;
}

DeviceMaintenance::~DeviceMaintenance() {
    / * nothing really in 
     * BUT take care of all objects in case of closing/flushing/writing/deleting ...
     * /
    delete updater;
}

std::string DeviceMaintenance::getDeviceName() {
    return DEVICESTRING;
}

void DeviceMaintenance::setDeviceName(std::string name) {
    configuration_deviceboot = new IJson("/spiffs/dynamic/DeviceMain.json");
    configuration_deviceboot->setITEM("DEVICESTRING", name);
    delete configuration_deviceboot;
}

/ * !brief #4213 - IMG_20200820_120247_347.jpg
 * about Flags in this case:
 * | ESP | ARM | Description |
 * |-----+-----+-------------|
 * | 0   | 0   | regular use |
 * | 0   | 1   | last known state: Arm (must be) in bootloader |
 * | 1   | 0   | begin of update; ESP in firmware update process |
 * | 1   | 1   | both MCUs in firmware update process |
 * /

UPDATEPROCESSSTRUCT *DeviceMaintenance::getProcessFlags() {
    configuration_deviceboot = new IJson("/spiffs/dynamic/ProcessingFlags.json");
    configuration_deviceboot->getITEM("ARM_UPDATE_PROGRESS", flags.ARM_UPDATE_PROGRESS);
    configuration_deviceboot->getITEM("ESP_UPDATE_PROGRESS", flags.ESP_UPDATE_PROGRESS);
    delete configuration_deviceboot;
    //   DEBUGOUT << "ARM Processing: " << (bool)flags->ARM_UPDATE_PROGRESS << "\t"
    //	    << "ESP Processing: " << (bool)flags->ESP_UPDATE_PROGRESS << "\n";
    return &flags;
}

void DeviceMaintenance::setProcessFlags(UPDATEPROCESSSTRUCT *InputFlags) {
    this->flags = *InputFlags;

    if (maintenanceByAppStart || this->flags.ARM_UPDATE_PROGRESS) {
	/ * every setItem here needs his own object of json * /
	configuration_deviceboot = new IJson("/spiffs/dynamic/ProcessingFlags.json");
	configuration_deviceboot->setITEM("ARM_UPDATE_PROGRESS", flags.ARM_UPDATE_PROGRESS);
	delete configuration_deviceboot;
	configuration_deviceboot = new IJson("/spiffs/dynamic/ProcessingFlags.json");
	configuration_deviceboot->setITEM("ESP_UPDATE_PROGRESS", flags.ESP_UPDATE_PROGRESS);
	delete configuration_deviceboot;
    }
}

PARAMETERSSTRUCT DeviceMaintenance::getSensorInitParameter() {
    PARAMETERSSTRUCT parameter;
    configuration_parameter = new IJson("/spiffs/dynamic/Sensors.json");

    configuration_parameter->getITEM("MIDDLE_OVER_COUNT", parameter.MIDDLE_OVER_COUNT);
    configuration_parameter->getITEM("SENSOR_ABSOLUTE_SUPPLY_MAX_LIMIT", parameter.SENSOR_ABSOLUTE_SUPPLY_MAX_LIMIT);
    configuration_parameter->getITEM("SENSOR_ABSOLUTE_SUPPLY_MAX_RANGE", parameter.SENSOR_ABSOLUTE_SUPPLY_MAX_RANGE);
    configuration_parameter->getITEM("SENSOR_ABSOLUTE_SUPPLY_MAX_SCALE", parameter.SENSOR_ABSOLUTE_SUPPLY_MAX_SCALE);
    configuration_parameter->getITEM("SENSOR_ABSOLUTE_SUPPLY_ZERO", parameter.SENSOR_ABSOLUTE_SUPPLY_ZERO);
    configuration_parameter->getITEM("SENSOR_DIFF_BREATH_MAX_RANGE", parameter.SENSOR_DIFF_BREATH_MAX_RANGE);
    configuration_parameter->getITEM("SENSOR_DIFF_BREATH_MAX_SCALE", parameter.SENSOR_DIFF_BREATH_MAX_SCALE);
    configuration_parameter->getITEM("SENSOR_DIFF_BREATH_ZERO", parameter.SENSOR_DIFF_BREATH_ZERO);
    configuration_parameter->getITEM("SENSOR_DIFF_FLOW_OFFSET", parameter.SENSOR_DIFF_FLOW_OFFSET);
    configuration_parameter->getITEM("SENSOR_DIFF_FLOW_MAX_RANGE", parameter.SENSOR_DIFF_FLOW_MAX_RANGE);
    configuration_parameter->getITEM("SENSOR_DIFF_FLOW_MIN_RANGE", parameter.SENSOR_DIFF_FLOW_MIN_RANGE);
    configuration_parameter->getITEM("SENSOR_DIFF_FLOW_ROOT_SCALE", parameter.SENSOR_DIFF_FLOW_ROOT_SCALE);
    configuration_parameter->getITEM("SENSOR_DIFF_FLOW_LINEAR_SCALE", parameter.SENSOR_DIFF_FLOW_LINEAR_SCALE);
    configuration_parameter->getITEM("TRANSPORT_FLOW_COMFORT_FACTOR", parameter.TRANSPORT_FLOW_COMFORT_FACTOR);
    configuration_parameter->getITEM("TRANSPORT_FLOW_COMFORT_OFFSET", parameter.TRANSPORT_FLOW_COMFORT_OFFSET);
    configuration_parameter->getITEM("TRANSPORT_FLOW_VOID_OFFSET", parameter.TRANSPORT_FLOW_VOID_OFFSET);
    configuration_parameter->getITEM("TRANSPORT_FLOW_DEVIATION_MAX", parameter.TRANSPORT_FLOW_DEVIATION_MAX);
    configuration_parameter->getITEM("TRANSPORT_FLOW_OUTPUT_MAX", parameter.TRANSPORT_FLOW_OUTPUT_MAX);
    configuration_parameter->getITEM("TRANSPORT_FLOW_I_FACTOR", parameter.TRANSPORT_FLOW_I_FACTOR);
    configuration_parameter->getITEM("TRANSPORT_FLOW_P_FACTOR", parameter.TRANSPORT_FLOW_P_FACTOR);
    configuration_parameter->getITEM("TRANSPORT_FLOW_TOLERANCE_FACTOR", parameter.TRANSPORT_FLOW_TOLERANCE_FACTOR);
    configuration_parameter->getITEM("ACTOR_PROP_VALVE_MAX_FREQUENCY", parameter.ACTOR_PROP_VALVE_MAX_FREQUENCY);
    configuration_parameter->getITEM("ACTOR_PROP_VALVE_OFFSET", parameter.ACTOR_PROP_VALVE_OFFSET);
    configuration_parameter->getITEM("ACTOR_PROP_DRIVER_PRECHARGE", parameter.ACTOR_PROP_DRIVER_PRECHARGE);
    configuration_parameter->getITEM("ACTOR_PROP_VALVE_PRECHARGE", parameter.ACTOR_PROP_VALVE_PRECHARGE);

    delete configuration_parameter;
    return parameter;
}

void DeviceMaintenance::exitBridgeMode() {
    if (maintenanceByAppStart) {
	flags.ARM_UPDATE_PROGRESS = false;
    }
    maintenanceByAppStart = false;
}

bool DeviceMaintenance::conditionBridgeMode() {
    return (this->flags.ARM_UPDATE_PROGRESS / *|| this->flags->ESP_UPDATE_PROGRESS* /);
}

bool DeviceMaintenance::conditionArmUpdate() {
    return (this->flags.ARM_UPDATE_PROGRESS);
    
}

bool DeviceMaintenance::conditionEspUpdate() {
    return (this->flags.ESP_UPDATE_PROGRESS);
}

bool DeviceMaintenance::conditionAppConnect() {
    if (conditionArmUpdate()) { //so far just by one(!) flag
	maintenanceByAppStart = true;
    }

    return maintenanceByAppStart;
}

void DeviceMaintenance::processUpdatePkg(ESPUPDATESTRUCT* updatePkg) {
    updater->processUpdatePkg(updatePkg);
}

bool DeviceMaintenance::updateResponsePkgReady() {
    return updater->responsePkgReady();
}

UPDATE_RESPONSE_COMMUNICATION_STRUCT* DeviceMaintenance::getUpdateResponsePkg() {
    return updater->getResponsePkg();
}

void DeviceMaintenance::setApplicationStatus(void *) {
}
 * */