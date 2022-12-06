
#include <iostream>
#include <iomanip>
#include <string>
#include <cstdlib>

using namespace std;

class Auto {
private: 
	
public: 
    Auto();
	Auto(int a, bool h, int c, int mphs, bool sP); //Constructor
    int age;
	bool health;
	int numberOfChildren;
	int mph;
	bool selfPreservation; //This scale will tell ai vehicle whether to protect at all costs or to possibly sacrifice you
    string getOwnerAge();
	bool getHealth();
	int getNumChildren();
	int getMPH();
	bool getSelfPreserv();
};


