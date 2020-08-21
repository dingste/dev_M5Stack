/* Create: 24. April 2020
 * File:   WPicture.cpp
 * Author: Dieter Steuten at <d.steuten@elk.de> @ ELK GmbH, Krefeld
 */

#include "WPicture.h"

WPicture::WPicture(const std::string title, const std::string file, Position* position) {
    widget = new Widget(title, position);

    prePrintedText = "";
    this->file = file;
}

WPicture::~WPicture() {
    delete widget;
}

void WPicture::makeVisible() {
    if (!widget->isVisible()) {
        if (file.compare("") != 0) {
            //     DEBUGOUT << " " << file << " " << widgetPosition->x << " " << widgetPosition->y << std::endl;
            jpgdim = TFT_jpg_image(widget->getPosition()->x, widget->getPosition()->y, 0, file.c_str(), NULL, 0);

            widget->getPosition()->height = jpgdim.height;
            widget->getPosition()->width = jpgdim.width;
            widget->getPosition()->yPost = jpgdim.y;
            widget->getPosition()->xPost = jpgdim.x;
        }

        widget->makeVisible();
    }
}

void WPicture::makeInvisible() {
    if (widget->isVisible()) {
        if (file.compare("") != 0) {
            if (widget->getPosition()->xPost > 0 && widget->getPosition()->yPost > 0) {
                TFT_fillRect(widget->getPosition()->xPost, widget->getPosition()->yPost, widget->getPosition()->width, widget->getPosition()->height, TFT_BLACK);
            }
        }
        widget->makeInvisible();
    }
}

const std::string WPicture::getWidget() {
    return widget->getWidget();
}

IWidget* WPicture::getWidget(const std::string title) {
    if (widget->getWidget().compare(title) == 0) {
        return this;
    }
    return NULL;
}

void WPicture::print(const std::string text) {
}

void WPicture::print(int value) {
}