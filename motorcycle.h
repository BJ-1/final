#ifndef MOTORCYCLE_H
#define MOTORCYCLE_H



#include <iostream>
#include <string>
#include "auto.h"

using namespace std;

class Motorcycle : public Auto
{
private:
    bool helmet;

public:
    Motorcycle();
    Motorcycle(bool hel, int a, bool h, int c, int mphs, bool sP);
    bool getHelmet();
};


#endif