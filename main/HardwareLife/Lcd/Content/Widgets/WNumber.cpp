/* Create: 24. April 2020
 * File:   WNumber.cpp
 * Author: Dieter Steuten at <d.steuten@elk.de> @ ELK GmbH, Krefeld
 */

#include "WNumber.h"

WNumber::WNumber(const std::string title, Position* position) {
    widget = new Widget(title, position);
    prePrintedText = "";
    value = -1;
}

WNumber::~WNumber() {
    delete widget;
}

void WNumber::print(const std::string text) {
}

void WNumber::print(int value) {
    char text[5] = {'0'};

    if (conditionValueChanged(value)) {
        if (conditionOneDigitValue(value)) {
            sprintf(text, "%1d", value);
        } else {
            sprintf(text, "%2d", value);
        }

        //       TFT_setFont(BIGNUMBER_FONT, NULL);
        makeInvisible();
        this->prePrintedText = text; //.insert(0, text); //
        this->value = value;
        makeVisible();

    }
}

void WNumber::makeVisible() {
    if (!widget->isVisible()) {
        if (prePrintedText.compare("") != 0) {
            _fg = TFT_WHITE;
            if (value>-1) {
                TFT_setFont(BIGNUMBER_FONT, NULL);
            }
            TFT_print(prePrintedText.c_str(), widget->getPosition()->x, widget->getPosition()->y); // CENTER, 40);
        }

        widget->makeVisible();
    }
}

void WNumber::makeInvisible() {
    if (widget->isVisible()) {
        if (prePrintedText.compare("") != 0) { /* don't print an empty string! cause of string -> const char* */
            _fg = TFT_BLACK;
            if (value>-1) {
                TFT_setFont(BIGNUMBER_FONT, NULL);
            }
            TFT_print(prePrintedText.c_str(), widget->getPosition()->x, widget->getPosition()->y);
        }
        widget->makeInvisible();
    }
}

const std::string WNumber::getWidget() {
    return widget->getWidget();
}

IWidget* WNumber::getWidget(const std::string title) {
    if (widget->getWidget().compare(title) == 0) {
        return this;
    }
    return NULL;
}

bool WNumber::conditionDotFive(int value) {
    return ((bool) (((int) value) % 10)) ? true : false;
}

bool WNumber::conditionOneDigitValue(int value) {
    return (value < 10) ? true : false;
}

bool WNumber::conditionValueChanged(int value) {
    return (this->value == value) ? false : true;
}

void WNumber::printHalfOfValue(Position* positionNearAtFull) {
    TFT_setFont(SMALLNUMBER_FONT, NULL);
    TFT_print(".5", 155, widget->getPosition()->height + 55); //positionNearAtFull->width + 20, positionNearAtFull->height);
}