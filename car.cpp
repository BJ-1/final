#include <iostream>
#include <iomanip>
#include <string>
#include <cstdlib>

#include "car.h"
#include "auto.h"

using namespace std;

Car::Car()
{
    age = 0;
    health = false;
    numberOfChildren = 0;
    mph = 0;
    selfPreservation = false;
    danger = false;
}

Car::Car(int a, bool h, int c, int mphs, bool sP)
{
    age = a;
    health = h;
    numberOfChildren = c;
    mph = mphs;
    selfPreservation = sP;
}

string Car::alert(bool danger)
{
    this->danger;
    
    if ((age > 50) || (health == false) || (numberOfChildren > 2) || (mph > 60) || (selfPreservation == true))
    {
        cout << "You are in danger\n\n" << endl;
    }
    

}
