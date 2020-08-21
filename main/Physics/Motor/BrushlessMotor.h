/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   BrushlessMotor.h
 * Author: dieter
 *
 * Created on 30. Mai 2020, 19:01
 */

#ifndef BRUSHLESSMOTOR_H
#define BRUSHLESSMOTOR_H
#include "IMotor.h"

class BrushlessMotor : public IMotor {
public:
    BrushlessMotor();
    virtual ~BrushlessMotor();
private:
    static const int mms_up_straight = 10;
    static const int mms_down_straight = 15;
    static const int mms_up_diagonal = 7;
    static const int mms_down_diagonal = 12;
    int battery_charge;
    static const int battery_discharging_seconds = 1;
    DriveTo direction;
protected:
    /* IMotor */
    int way2time(int);
    int time2way(int);
  void setDirection(DriveTo);
};

#endif /* BRUSHLESSMOTOR_H */

