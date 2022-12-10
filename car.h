#ifndef CAR_H
#define CAR_H


#include <iostream>
#include <string>
#include "auto.h"

using namespace std;

class Car : public Auto
{
private:
    bool danger;

public:
    Car();
    Car(int a, bool h, int c, int mphs, bool sP);
    string alert(bool danger);
    bool decide;
};


#endif