/* 
 * File:   DeviceMaintenance.h
 * Author: Dieter Steuten at <d.steuten@elk.de>
 *
 * Created on 5. August 2020, 14:08
 */

#ifndef DEVICEMAINTENANCE_H
#define DEVICEMAINTENANCE_H
/*
#include "IDeviceMaintenance.h"
#include "../../TransportLayer/LibraryJson/IJson.h"

class DeviceMaintenance : public IDeviceMaintenance {
   public:
    DeviceMaintenance();
    virtual ~DeviceMaintenance();

   protected:
    / * all setable things need some verification, that OUR application is connected * /
    void setApplicationStatus(void*) override;
    void exitBridgeMode() override;
    std::string getDeviceName() override;
    void setDeviceName(std::string) override;
    UPDATEPROCESSSTRUCT* getProcessFlags() override;
    void setProcessFlags(UPDATEPROCESSSTRUCT*) override;
    PARAMETERSSTRUCT getSensorInitParameter() override;
    bool conditionBridgeMode() override;
    bool conditionArmUpdate() override;
    bool conditionEspUpdate() override;
    bool conditionAppConnect() override;

    void processUpdatePkg(ESPUPDATESTRUCT* updatePkg) override;
    bool updateResponsePkgReady() override;
    UPDATE_RESPONSE_COMMUNICATION_STRUCT* getUpdateResponsePkg() override;

   private:
    bool maintenanceByAppStart;
    std::string DEVICESTRING;
    double RELEASENUMBER;

    UPDATEPROCESSSTRUCT flags;
    
    / * DeviceBoot * /
    IJson* configuration_deviceboot;
    / * DeviceParameterGet * / / *  DeviceParameterSet * / 
    IJson* configuration_parameter;
    / * OTA Update* /
    IOTAUpdate* updater;
 */
};

#endif /* DEVICEMAINTENANCE_H */
