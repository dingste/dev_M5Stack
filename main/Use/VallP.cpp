/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   VallP.cpp
 * Author: dieter
 * 
 * Created on 30. August 2020, 14:30
 */

#include "VallP.h"

VallP::VallP() {
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

VallP::VallP(const VallP& orig) {
}

VallP::~VallP() {
}

