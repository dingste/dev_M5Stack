/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Drive.cpp
 * Author: dieter
 * 
 * Created on 26. April 2020, 16:08
 */

#include "Drive.h"

Drive::Drive(gpio_num_t f_left_front_wheel, gpio_num_t b_left_front_wheel
        , gpio_num_t f_right_front_wheel, gpio_num_t b_right_front_wheel
        , gpio_num_t f_left_back_wheel, gpio_num_t b_left_back_wheel
        , gpio_num_t f_right_back_wheel, gpio_num_t b_right_back_wheel) {
    left_front_wheel = new Pwm(f_left_front_wheel, b_left_front_wheel);
    right_front_wheel = new Pwm(f_right_front_wheel, b_right_front_wheel);
    left_back_wheel = new Pwm(f_left_back_wheel, b_left_back_wheel);
    right_back_wheel = new Pwm(f_right_back_wheel, b_right_back_wheel);
}

Drive::~Drive() {
    delete left_front_wheel;
    delete right_front_wheel;
    delete left_back_wheel;
    delete right_back_wheel;
}

void Drive::driveTo(DriveTo driveTo) {
    switch (driveTo) {
        case DriveTo::D_10to11_oClock:
            left_front_wheel->setDirection(Direction::direction_forward);
            right_front_wheel->setDirection(Direction::direction_backward);
            left_back_wheel->setDirection(Direction::direction_forward);
            right_back_wheel->setDirection(Direction::direction_backward);
            left_front_wheel->setSpeed(100);
            right_front_wheel->setSpeed(50);
            left_back_wheel->setSpeed(100);
            right_back_wheel->setSpeed(50);
            break;
        case DriveTo::D_12_oClock:
            left_front_wheel->setDirection(Direction::direction_forward);
            right_front_wheel->setDirection(Direction::direction_forward);
            left_back_wheel->setDirection(Direction::direction_forward);
            right_back_wheel->setDirection(Direction::direction_forward);
            left_front_wheel->setSpeed(100);
            right_front_wheel->setSpeed(100);
            left_back_wheel->setSpeed(100);
            right_back_wheel->setSpeed(100);
            break;
        case DriveTo::D_1to2_oClock:
            left_front_wheel->setDirection(Direction::direction_backward);
            right_front_wheel->setDirection(Direction::direction_forward);
            left_back_wheel->setDirection(Direction::direction_backward);
            right_back_wheel->setDirection(Direction::direction_forward);
            left_front_wheel->setSpeed(50);
            right_front_wheel->setSpeed(100);
            left_back_wheel->setSpeed(50);
            right_back_wheel->setSpeed(100);
            break;
        case DriveTo::D_3_oClock:
            left_front_wheel->setDirection(Direction::direction_backward);
            right_front_wheel->setDirection(Direction::direction_forward);
            left_back_wheel->setDirection(Direction::direction_backward);
            right_back_wheel->setDirection(Direction::direction_forward);
            left_front_wheel->setSpeed(100);
            right_front_wheel->setSpeed(100);
            left_back_wheel->setSpeed(100);
            right_back_wheel->setSpeed(100);
            break;
        case DriveTo::D_4to5_oClock:
            left_front_wheel->setDirection(Direction::direction_forward);
            right_front_wheel->setDirection(Direction::direction_backward);
            left_back_wheel->setDirection(Direction::direction_forward);
            right_back_wheel->setDirection(Direction::direction_backward);
            left_front_wheel->setSpeed(50);
            right_front_wheel->setSpeed(100);
            left_back_wheel->setSpeed(50);
            right_back_wheel->setSpeed(100);
            break;
        case DriveTo::D_6_oClock:
            left_front_wheel->setDirection(Direction::direction_backward);
            right_front_wheel->setDirection(Direction::direction_backward);
            left_back_wheel->setDirection(Direction::direction_backward);
            right_back_wheel->setDirection(Direction::direction_backward);
            left_front_wheel->setSpeed(100);
            right_front_wheel->setSpeed(100);
            left_back_wheel->setSpeed(100);
            right_back_wheel->setSpeed(100);
            break;
        case DriveTo::D_7to8_oClock:
            left_front_wheel->setDirection(Direction::direction_backward);
            right_front_wheel->setDirection(Direction::direction_backward);
            left_back_wheel->setDirection(Direction::direction_backward);
            right_back_wheel->setDirection(Direction::direction_backward);
            left_front_wheel->setSpeed(50);
            right_front_wheel->setSpeed(100);
            left_back_wheel->setSpeed(50);
            right_back_wheel->setSpeed(100);
            break;
        case DriveTo::D_9_oClock:
            left_front_wheel->setDirection(Direction::direction_forward);
            right_front_wheel->setDirection(Direction::direction_backward);
            left_back_wheel->setDirection(Direction::direction_forward);
            right_back_wheel->setDirection(Direction::direction_backward);
            left_front_wheel->setSpeed(50);
            right_front_wheel->setSpeed(100);
            left_back_wheel->setSpeed(50);
            right_back_wheel->setSpeed(100);
            break;
        default: break;
    }
}

void Drive::penTo(PenTo* penTo) {
    switch (*penTo) {
        case PenTo::_pen_down: break;
        case PenTo::_pen_up: break;
        default: break;
    }
}