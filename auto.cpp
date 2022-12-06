
#include <iostream>
#include <iomanip>
#include <string>
#include <cstdlib>

#include "auto.h"

using namespace std;

Auto::Auto(){
    age = 0;
    health = false;
    numberOfChildren = 0;
    mph = 0;
    selfPreservation = false;
}

Auto::Auto(int a, bool h, int c, int mphs, bool sP)
{
    age = a;
    health = h;
    numberOfChildren = c;
    mph = mphs;
    selfPreservation = sP;
}


bool Auto::getHealth()
{


};

int Auto::getNumChildren(){
    
};

int Auto::getMPH(){

};

bool Auto::getSelfPreserv(){

};

