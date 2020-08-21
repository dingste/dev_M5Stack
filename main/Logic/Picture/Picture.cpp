/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Picture.cpp
 * Author: dieter
 * 
 * Created on 26. April 2020, 16:56
 */

#include "Picture.h"
#include <string.h>
#include "Log.h"

Picture::Picture(int x, int y)  {
    /*    for (int zerox = 0; zerox < n; ++zerox) {
            for (int zeroy = 0; zeroy < n; ++zeroy) {
                pointmap.push_back(new Point(zerox, zeroy));
            }
        }*/
    scale = new XandY(x,y);
    actualPoint = new Pixel(0, 0);
    pointmapIter = pointmap.begin();
}

Picture::~Picture() {
    // delete bitmap;
    delete actualPoint;
    pointmap.clear();
    delete scale;
}

void Picture::oneToFalse(Pixel* point) {
    pointmapIter = pointmap.begin();
    while (pointmapIter != pointmap.end()) {
        if ((*pointmapIter)->getX() == point->getX() && (*pointmapIter)->getY() == point->getY()) {
            (*pointmapIter)->setFill(false);
            break;
        }
        pointmapIter++;
    }
    if (pointmapIter == pointmap.end()) {
        point->setFill(false);
        pointmap.push_back(new Pixel(*point));
    }
}

void Picture::oneToTrue(Pixel* point) {

    pointmapIter = pointmap.begin();
    while (pointmapIter != pointmap.end()) {
        if ((*pointmapIter)->getX() == point->getX() && (*pointmapIter)->getY() == point->getY()) {
            (*pointmapIter)->setFill(true);
            break;
        }
        pointmapIter++;
    }
    if (pointmapIter == pointmap.end()) {
        point->setFill(true);
        pointmap.push_back(new Pixel(*point));
    }
}

void Picture::print() {
    pointmapIter = pointmap.begin();
    while (pointmapIter != pointmap.end()) {
        if ((*pointmapIter)->getY() == 0) std::cout << std::endl;
        std::cout << /*"(" << (*pointmapIter)->getX() << "|" << (*pointmapIter)->getY() << ") " <<*/ (*pointmapIter)->getFill();
        pointmapIter++;
    }
}

std::vector <Pixel*> Picture::getAll() {
    return pointmap;
}

PixelAt Picture::pixelAt(int step) {
    pointmapIter = pointmap.begin();
    while (pointmapIter != pointmap.end()) {
        if ((*pointmapIter)->getFill()) {
            if ((*pointmapIter)->getY() == actualPoint->getY() - step
                    && (*pointmapIter)->getX() == actualPoint->getX() + step
                    ) return PixelAt::_1to2_oClock;

            else if ((*pointmapIter)->getY() == actualPoint->getY()
                    && (*pointmapIter)->getX() == actualPoint->getX() + step
                    ) return PixelAt::_3_oClock;

            else if ((*pointmapIter)->getY() == actualPoint->getY() + step
                    && (*pointmapIter)->getX() == actualPoint->getX() + step
                    ) return PixelAt::_4to5_oClock;

            else if ((*pointmapIter)->getY() == actualPoint->getY() + step
                    && (*pointmapIter)->getX() == actualPoint->getX()
                    ) return PixelAt::_6_oClock;

            else if ((*pointmapIter)->getY() == actualPoint->getY() + step
                    && (*pointmapIter)->getX() == actualPoint->getX() - step
                    ) return PixelAt::_7to8_oClock;

            else if ((*pointmapIter)->getY() == actualPoint->getY()
                    && (*pointmapIter)->getX() == actualPoint->getX() - step
                    ) return PixelAt::_9_oClock;

            else if ((*pointmapIter)->getY() == actualPoint->getY() - step
                    && (*pointmapIter)->getX() == actualPoint->getX() - step
                    ) return PixelAt::_10to11_oClock;

            else if ((*pointmapIter)->getY() == actualPoint->getY()
                    && (*pointmapIter)->getX() == actualPoint->getX() - step
                    ) return PixelAt::_12_oClock;

        }
        pointmapIter++;
    }

    return PixelAt::stay;
}

Pixel* Picture::getNextPixel(int step) {
    actualPoint->setFill(true);
    Pixel* stepToPixel = new Pixel(0, 0);
    switch (pixelAt(step)) {
        case PixelAt::_1to2_oClock:
            stepToPixel->x = step;
            stepToPixel->y = (-1) * step;
            //    DEBUGOUT << actualPoint->getX() << "|" << actualPoint->getY() << " _1to2_oClock\n";
            break;
        case PixelAt::_3_oClock:
            stepToPixel->x = step;
            //    DEBUGOUT << actualPoint->getX() << "|" << actualPoint->getY() << " _3_oClock\n";
            break;
        case PixelAt::_4to5_oClock:
            stepToPixel->x = step;
            stepToPixel->y = step;
            //    DEBUGOUT << actualPoint->getX() << "|" << actualPoint->getY() << " _4to5_oClock\n";
            break;
        case PixelAt::_6_oClock:
            stepToPixel->y = step;
            //    DEBUGOUT << actualPoint->getX() << "|" << actualPoint->getY() << " _6_oClock\n";
            break;
        case PixelAt::_7to8_oClock:
            stepToPixel->x = (-1) * step;
            stepToPixel->y = step;
            //    DEBUGOUT << actualPoint->getX() << "|" << actualPoint->getY() << " _7to8_oClock\n";
            break;
        case PixelAt::_9_oClock:
            stepToPixel->x = (-1) * step;
            //    DEBUGOUT << actualPoint->getX() << "|" << actualPoint->getY() << " _9_oClock\n";
            break;
        case PixelAt::_10to11_oClock:
            stepToPixel->x = (-1) * step;
            stepToPixel->y = (-1) * step;
            //    DEBUGOUT << actualPoint->getX() << "|" << actualPoint->getY() << " _10to11_oClock\n";
            break;
        case PixelAt::_12_oClock:
            stepToPixel->x = (-1) * step;
            //   DEBUGOUT << actualPoint->getX() << "|" << actualPoint->getY() << " _12_oClock\n";
            break;
        case PixelAt::stay:
            //   DEBUGOUT << actualPoint->getX() << "|" << actualPoint->getY() << " stay\n";
            actualPoint->setFill(false);
            break;
        default:
            //   DEBUGOUT << "nothin a all\n";
            actualPoint->setFill(false);
            break;
    }
    actualPoint->move(stepToPixel);
    delete stepToPixel;
    return actualPoint;
}

    XandY* Picture::transpond(const XandY& operand){
        return scale->operator /(operand);
    }
    
        XandY* Picture::regular(){
        return scale;
    }