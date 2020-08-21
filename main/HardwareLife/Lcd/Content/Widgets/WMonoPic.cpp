/* Create: 24. April 2020
 * File:   WMonoPic.cpp
 * Author: Dieter Steuten at <d.steuten@elk.de> @ ELK GmbH, Krefeld
 */

#include "WMonoPic.h"
#include "Log.h"

WMonoPic::WMonoPic(const std::string title, Position* position) {
    widget = new Widget(title, position);

    prePrintedText = "";
}

WMonoPic::~WMonoPic() {
    delete widget;
}

void WMonoPic::makeVisible() {

}

void WMonoPic::makeInvisible() {

}

const std::string WMonoPic::getWidget() {
    return widget->getWidget();
}

IWidget* WMonoPic::getWidget(const std::string title) {
    if (widget->getWidget().compare(title) == 0) {
        return this;
    }
    return NULL;
}

void WMonoPic::print(bool value) {
    _fg = TFT_WHITE;
    TFT_setFont(TEXT_FONT, NULL);
    if (value) {
        TFT_print("X", widget->getPosition()->x, widget->getPosition()->y); // CENTER, 40);
    } else {
        TFT_print("_", widget->getPosition()->x, widget->getPosition()->y); // CENTER, 40);  
    }
}

void WMonoPic::print(std::vector<Pixel*> pointmap) {
    _fg = TFT_WHITE;
    TFT_setFont(TEXT_FONT, NULL);
    std::vector <Pixel*>::iterator pointmapIter = pointmap.begin();
    while (pointmapIter != pointmap.end()) {
        if ((*pointmapIter)->getFill()) {
         //   DEBUGOUT << "X (" << widget->getPosition()->x + (*pointmapIter)->x + 10 << "|" << widget->getPosition()->y + (*pointmapIter)->y + 10 << ") \n";
        //    TFT_print("X", widget->getPosition()->x + (*pointmapIter)->x * 10, widget->getPosition()->y + (*pointmapIter)->y * 10); // CENTER, 40);
            TFT_drawPixel(widget->getPosition()->x + (*pointmapIter)->x*10, widget->getPosition()->y + (*pointmapIter)->y*10, TFT_WHITE, 1);
        } else {
       //     DEBUGOUT << "- (" << widget->getPosition()->x + (*pointmapIter)->x + 10 << "|" << widget->getPosition()->y + (*pointmapIter)->y + 10 << ") \n";
        //    TFT_print("-", widget->getPosition()->x + (*pointmapIter)->x * 10, widget->getPosition()->y + (*pointmapIter)->y * 10); // CENTER, 40);
                        TFT_drawPixel(widget->getPosition()->x + (*pointmapIter)->x*10, widget->getPosition()->y + (*pointmapIter)->y*10, TFT_RED, 1);
        }
        pointmapIter++;
    }
}