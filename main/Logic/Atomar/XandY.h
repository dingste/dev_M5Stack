/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Point.h
 * Author: dieter
 *
 * Created on 15. Mai 2020, 22:03
 */

#ifndef POINT_H
#define POINT_H
#include <iostream>

enum XY : bool {
    X, Y
};

class XandY {
public:

    XandY(int _x, int _y) : x(_x), y(_y) {
    };

    XandY(const XandY& copy) : x(copy.x), y(copy.y) {
    };

    virtual ~XandY() {
    };

    XandY* operator=(const XandY& copy) {
        x = copy.x;
        y = copy.y;
        return this;
    };

    bool operator==(const XandY& compare) {
        //         std::cout <<"("<<compare.x<<"|"<<compare.y<<") "<< " ? "<<"("<<x<<"|"<<y<<") "<<std::endl;
        return (x == compare.x && y == compare.y) ? true : false;
    };

    bool operator!=(const XandY& compare) {
        //         std::cout <<"("<<compare.x<<"|"<<compare.y<<") "<< " ? "<<"("<<x<<"|"<<y<<") "<<std::endl;
        return (x != compare.x || y != compare.y) ? true : false;
    };

    XandY* operator/(const XandY& operand) {
        //         std::cout <<"("<<compare.x<<"|"<<compare.y<<") "<< " ? "<<"("<<x<<"|"<<y<<") "<<std::endl;
        x /= operand.x;
        y /= operand.y;
        return this;
    };

    /*    XandY& operator-=(const XandY& step) {
            //         std::cout <<"("<<compare.x<<"|"<<compare.y<<") "<< " ? "<<"("<<x<<"|"<<y<<") "<<std::endl;
            x -=step.x; y -=step.y;
            return *this;
        };*/ //not needed! ? !

    void move(const XandY* step) {
        x += step->x;
        y += step->y;
    };

   std::ostream& operator<<(std::ostream os) {
        os << "(" << (int) x << "|" << (int) y << ")";
        return os;
    };
    
       void print() {
        std::cout << "(" << (int) x << "|" << (int) y << ")";
    };
    
    int x, y;
};

#endif /* POINT_H */

