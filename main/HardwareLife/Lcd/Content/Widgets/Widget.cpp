/* Create: 5. November 2019
 * File:   Widget.cpp
 * Author: Dieter Steuten at <d.steuten@elk.de> @ ELK GmbH, Krefeld
 */
#include "Widget.h"
#include "../../../../Log.h"

Widget::Widget(const std::string title, Position* position) : widgetPosition(position), widgetTitle(title) {
    visible = false;
}

Widget::~Widget() {
 //   DEBUGOUT << "destruct " << widgetTitle << "!" << std::endl;
    visible = false;
    delete widgetPosition;
}

const std::string Widget::getWidget() {
    return widgetTitle;
}

void Widget::makeVisible() {
    visible=true;
    }

void Widget::makeInvisible() {
    visible=false;
    }

bool Widget::isVisible() {
    return visible;
}

Position* Widget::getPosition() {
    return widgetPosition;
}

void Widget::setPosition(Position* position) {
    widgetPosition = position;
}

Widget* Widget::getWidget(const std::string title) {
    if (this->widgetTitle.compare(title) == 0) {
        DEBUGOUT << getWidget() << " eq " << title << std::endl;
        return this;
    }
    return NULL;
}
