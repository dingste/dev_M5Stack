#include <stdio.h>
#include "../../../oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
#include "../../../oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
#include "sdkconfig.h"
#include "HardwareLife/WiFi/WiFi.h"
#include "Use/ProjektEi.h"
#include "Log.h"


static char tag[] = "MAIN_DevOnM5";

extern "C" {
    void app_main(); //Forward declaration
}

void app_main() {
    Wifi* wifi = new Wifi();
    xTaskCreate(Wifi::run, "wifi", 1024, (void*) wifi, 2 | portPRIVILEGE_BIT, NULL);

    ProjektEi* pei = new ProjektEi(GPIO_NUM_3, GPIO_NUM_4);

}