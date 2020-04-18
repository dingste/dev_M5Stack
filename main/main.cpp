#include <stdio.h>
#include <string>
#include <iostream>
#include "sdkconfig.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "IdLife/Id.h"
#include "DataLife/IFileItem.h"
#include "DataLife/FileItem.h"
#include "HardwareLife/OLED/OLED.h"
//#include "HardwareLife/Lcd/Content/Content.h"
#include "HardwareLife/ITechDevice.h"
#include "HardwareLife/TechDevice.h"

#define BOB_MASTER_PIN GPIO_NUM_16

extern "C" {
    void app_main(void);
}

TaskHandle_t bobTaskHandle;
IId* bobId = new Id();
//ITechDevice* owndevice = new TechDevice(UART_NUM_2, BOB_MASTER_PIN, 17, bobId);
IFileItem* afile = new FileItem();
IId* afileId = new FileItem();
IId* aliceId = new Id();
IId* aliceDevice = new Combinator();

//Content* content = new Content();

static void loop(void *pvParameters) {
/*    Id* POSTbobId = new Id();
    for (;;) {
        content->lcdFace->blink();
        vTaskDelay(200 / portTICK_PERIOD_MS);
        std::cout << *POSTbobId << endl;
        POSTbobId->setId(bobId->getName(), bobId->getKey());
        vTaskDelay(200 / portTICK_PERIOD_MS);
        std::cout << *POSTbobId << endl;
        delete POSTbobId;
        POSTbobId = new Id();
    }
*/};

void app_main(void) {
        string printstr = "44:48";
    OLED* oled = new OLED();
    oled->print(printstr.c_str(), 20, 50, true, true);
/*    bobId->setId("BOB", "98765");

    std::cout << *bobId << endl;
    std::cout << *bobDevice << endl;

        aliceId->setId("ALICE", "87659");

    std::cout << *aliceId << endl;
    std::cout << *aliceDevice << endl;
    
    std::cout << *afileId << endl;
    std::cout << afile->getFileType() << " " << afile->getFileRights() << " "<< afile->getFileContent() << endl;
    //   xTaskCreate(SerialAbstraction::listen, "bob", 2048, (void*) serialBob, 2, &bobTaskHandle);
    //   vTaskSuspend(bobTaskHandle);
    xTaskCreate(loop, "loopGUI", 2048, NULL, 3, NULL);
*/
    //  xTaskCreate(WiFi::listen, "wifi_task", 2048, (void*) wifi, 5, NULL);
}

