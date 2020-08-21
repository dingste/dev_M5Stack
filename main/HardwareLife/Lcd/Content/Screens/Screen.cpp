/* Create: 5. November 2019
 * File:   Screen.cpp
 * Author: Dieter Steuten at <d.steuten@elk.de> @ ELK GmbH, Krefeld
 */
#include "Screen.h"
#include "../Widgets/Widget.h"

#include "../../../../Log.h"

Screen::Screen() {
    screenTitle = "ALL";
}

Screen::~Screen() {
    TFT_fillScreen(TFT_BLACK);
    contentIterator = screenContent.begin();
    while (contentIterator != screenContent.end()) {
        delete contentIterator->second;
        contentIterator++;
    }
}

bool Screen::changeScreen(const std::string newScreenName) { /* LEGACY */
  //   DEBUGOUT << "compare " << newScreenName << " in " << this->screenTitle << "\t ";
    //  getWidget(screenTitle)->rename(newScreenName);
    if (screenTitle.compare(newScreenName) != 0) {
        screenTitle = newScreenName;
        TFT_fillScreen(TFT_BLACK);
        contentIterator = screenContent.begin();
        while (contentIterator != screenContent.end()) {
            contentIterator->second->makeInvisible();
            contentIterator++;
        }
        return true;
    }
    return false;
}

void Screen::addWidget(IWidget* widget) {
    if (screenContent.find(widget->getWidget()) == screenContent.end()) {
        screenContent[widget->getWidget()] = widget;
     //   DEBUGOUT << "insert " << widget->getWidget() << " in " << this->screenTitle << "\n ";
    }
}

void Screen::draw() {
    // Iterate through all elements in std::map
    contentIterator = screenContent.begin();
    while (contentIterator != screenContent.end()) {
        DEBUGOUT << contentIterator->first << " :: " << contentIterator->second << std::endl;
        contentIterator++;
    }
}

const std::string Screen::getTitle() {
    return screenTitle;
}

bool Screen::removeWidget(const std::string title) {
    if (screenContent.find(title) != screenContent.end()) {
        delete screenContent[title];
    }
    return false;
}

IWidget* Screen::getWidget(const std::string title) {
    if (screenContent.find(title) != screenContent.end()) {
        return screenContent[title];
    }
    DEBUGOUT << "can't get widget " << title << " from " << this->screenTitle << "\n";
    return nullptr;
}