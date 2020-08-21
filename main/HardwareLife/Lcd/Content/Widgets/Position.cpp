/* Create: 8. April 2020
 * File:   Position.cpp
 * Author: Dieter Steuten at <d.steuten@elk.de> @ ELK GmbH, Krefeld
 */

#include "Position.h"

Position::Position(int x, int y) {
    this->x =this->xPost= x;
    this->y =this->yPost= y;
}

Position::~Position() {
}

