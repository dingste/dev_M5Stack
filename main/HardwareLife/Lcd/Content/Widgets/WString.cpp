/* Create: 24. April 2020
 * File:   WString.cpp
 * Author: Dieter Steuten at <d.steuten@elk.de> @ ELK GmbH, Krefeld
 */

#include "WString.h"

WString::WString(const std::string title, Position* position) {
    widget = new Widget(title, position);
    prePrintedText = "";
}

WString::~WString() {
    delete widget;
}

void WString::print(int value) {
}

void WString::print(const std::string text) {
    if (this->prePrintedText.compare(text) != 0) { // don't print every time the same
        //     TFT_setFont(TEXT_FONT, NULL);
        makeInvisible();
        this->prePrintedText = text;
        makeVisible();
    }

}

void WString::makeVisible() {
    if (!widget->isVisible()) {
        if (prePrintedText.compare("") != 0) {
            _fg = TFT_WHITE;
            TFT_setFont(TEXT_FONT, NULL);
            TFT_print(prePrintedText.c_str(), widget->getPosition()->x, widget->getPosition()->y); // CENTER, 40);
        }

        widget->makeVisible();
    }
}

void WString::makeInvisible() {
    if (widget->isVisible()) {
        if (prePrintedText.compare("") != 0) { /* don't print an empty string! cause of string -> const char* */
            _fg = TFT_BLACK;

            TFT_setFont(TEXT_FONT, NULL);

            TFT_print(prePrintedText.c_str(), widget->getPosition()->x, widget->getPosition()->y);
        }
        widget->makeInvisible();
    }
}

const std::string WString::getWidget() {
    return widget->getWidget();
}

IWidget* WString::getWidget(const std::string title) {
    if (widget->getWidget().compare(title) == 0) {
        return this;
    }
    return NULL;
}
