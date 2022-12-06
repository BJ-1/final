#include <iostream>
#include <string>
#include "motorcycle.h"
#include "auto.h"

using namespace std;

Motorcycle::Motorcycle()
{
    age = 0;
    health = false;
    numberOfChildren = 0;
    mph = 0;
    selfPreservation = false;
    helmet = false;
}

Motorcycle::Motorcycle(bool hel, int a, bool h, int c, int mphs, bool sP)
{
    age = a;
    health = h;
    numberOfChildren = c;
    mph = mphs;
    selfPreservation = sP;
    helmet = hel;
}
bool Motorcycle::getHelmet()
{

}

