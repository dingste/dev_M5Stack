#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "sdkconfig.h"
#include "HardwareLife/Lcd/Content/Screens/Screen.h"
#include "HardwareLife/Lcd/Content/Widgets/Position.h"
#include "HardwareLife/Lcd/Content/Widgets/WString.h"
#include "HardwareLife/Lcd/Content/Widgets/WNumber.h"
#include "HardwareLife/Lcd/Content/Widgets/WPicture.h"
#include "HardwareLife/Lcd/Content/Widgets/WMonoPic.h"
#include "../components/tft/tft.h"
#include "HardwareLife/Lcd/Defines_Lcd.h"
#include "HardwareLife/WiFi/WiFi.h"
#include "Logic/Picture/Picture.h"
#include "Logic/Drive/IDrive.h"
#include "Logic/Drive/Drive.h"
#include "HardwareLife/Gpio/Pwm/IPwm.h"
#include "HardwareLife/Gpio/Pwm/Pwm.h"
#include "Physics/Pen/IPen.h"
#include "Physics/Pen/Fineliner.h"
#include "Log.h"
#include <time.h>
#include <sys/time.h>

#include "freertos/event_groups.h"
#include "esp_system.h"
#include "esp_event.h"

#include "HardwareLife/OLED/OLED.h"
#include "HardwareLife/Clock/Clock.h"
#include "HardwareLife/IMU/Imu.h"
#include "HardwareLife/Gpio/IGpio.h"
#include "HardwareLife/Gpio/Gpio.h"

extern "C" {
    void app_main(void);
    void TftDisplayBackend();
}

void app_main(void) {
    Wifi* wifi = new Wifi();
    xTaskCreate(Wifi::run, "wifi", 1024, (void*) wifi, 2 | portPRIVILEGE_BIT, NULL);

    OLED* oled = new OLED();
    Clock* clock = new Clock();
    // IPwm* buzzer = new Pwm(GPIO_NUM_26, GPIO_NUM_26);
    //IGpio* buzzer = new Gpio(GPIO_NUM_26, GPIO_MODE_OUTPUT);
    //  IPwm* blue_led_pwm = new Pwm(GPIO_NUM_19, GPIO_NUM_19);
    IGpio* blue_led = new Gpio(GPIO_NUM_19, GPIO_MODE_OUTPUT);
    IGpio* button = new Gpio(GPIO_NUM_35, GPIO_MODE_INPUT);
    
    Imu* imu = new Imu();
 // imu->print();

    // clock->sleep();
    while (true) {
        vTaskDelay(1000 / portTICK_PERIOD_MS);
        DEBUGOUT <<   imu->available()<<" "<<imu->getQuaternion(1)<<std::endl;
    /*    if (!button->connected()/ *!clock->isSleeping()* /) {

            blue_led->setONOFF(1);
            oled->print(clock->getClock(), 10, 40, true, true);
            vTaskDelay(2800 / portTICK_PERIOD_MS);

        } else {
            oled->clear();
            clock->buildTime();
            blue_led->setONOFF(0);

        }*/

        /*

       IPicture* bitmapPicture = new Picture(10,10);
       Pixel* tempPoint = new Pixel(0, 0);
       Pixel* comparePoint = tempPoint;
       //  Position* SCREEN_TITLE_POSITION = new Position(CENTER, (DEFAULT_TFT_DISPLAY_HEIGHT / 2) - 10);
       Position* MONOPIC_BEGIN_POSITION = new Position(10, 10);

       TftDisplayBackend();

       IScreen* oneScreen = new Screen();
       oneScreen->addWidget(new WMonoPic("picture", MONOPIC_BEGIN_POSITION));
       for (int i = 0; i < 10; i = i + 1) {
           for (int j = 0; j < 10; j = j + 1) {
               tempPoint->x = i;
               tempPoint->y = j;
               if (i % 1 == 0 && j % 3 == 0)
                   bitmapPicture->oneToTrue(tempPoint);
               else
                   bitmapPicture->oneToFalse(tempPoint);
           }
       }

       //  oneScreen->getWidget("picture")->print(bitmapPicture->getAll());
       //    vTaskDelay(2222 / portTICK_PERIOD_MS);

       / *  IDrive* drive = new Drive(
                 GPIO_NUM_3,GPIO_NUM_3,GPIO_NUM_3,GPIO_NUM_3,
                 GPIO_NUM_3,GPIO_NUM_3,GPIO_NUM_3,GPIO_NUM_3
                 );
         drive->driveTo(DriveTo::D_10to11_oClock);
         * /
       IPen* fineliner = new Fineliner(2,3);
    
       DEBUGOUT << "transpond " ;
       bitmapPicture->transpond(*fineliner->regular())->print() ;
               std::cout << std::endl;
       / *
       IPwm* rad_vl = new Pwm(GPIO_NUM_2, GPIO_NUM_5);
       IPwm* rad_vr = new Pwm(GPIO_NUM_2, GPIO_NUM_5);
       IPwm* rad_hl = new Pwm(GPIO_NUM_2, GPIO_NUM_5);
       IPwm* rad_hr = new Pwm(GPIO_NUM_2, GPIO_NUM_5);

       rad_vl->setDirection(Direction::direction_forward);
       for (int turns = 100; turns > 0; turns--) {
           rad_vl->setSpeed(turns);
           vTaskDelay(80 / portTICK_PERIOD_MS);
       }
       rad_vl->setSpeed(100);


       rad_vr->setDirection(Direction::direction_forward);
       for (int turns = 100; turns > 0; turns--) {
           rad_vr->setSpeed(turns);
           vTaskDelay(80 / portTICK_PERIOD_MS);
       }
       rad_vr->setSpeed(100);

       rad_hl->setDirection(Direction::direction_forward);
       for (int turns = 100; turns > 0; turns--) {
           rad_hl->setSpeed(turns);
           vTaskDelay(80 / portTICK_PERIOD_MS);
       }
       rad_hl->setSpeed(100);


       rad_hr->setDirection(Direction::direction_forward);
       for (int turns = 100; turns > 0; turns--) {
           rad_hr->setSpeed(turns);
           vTaskDelay(80 / portTICK_PERIOD_MS);
       }
       rad_hr->setSpeed(100);
         * /

       int radius = 1;
       while (radius <= bitmapPicture->getAll().size()) {

           tempPoint = (bitmapPicture->getNextPixel(radius));
           if (tempPoint->getFill()) {
               bitmapPicture->oneToFalse(tempPoint);
               vTaskDelay(222 / portTICK_PERIOD_MS);
               DEBUGOUT << "Stift runter\n";
               / * stift senken * /
               //  tempPoint->content = false;
               radius = 1;
           } else {
               vTaskDelay(222 / portTICK_PERIOD_MS);
               DEBUGOUT << "Stift hoch\n";
               / * stift heben * /
               radius++;
           }

           oneScreen->getWidget("picture")->print(bitmapPicture->getAll());
       }
         */
    }

}