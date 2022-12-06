# Makefile for HW 2 f2022, ecs36b

CC = g++ -std=c++14

CFLAGS = -g -I/usr/include/jsoncpp

CFLAGS = -g

LDFLAGS = -fopenmp -ljsoncpp -L~/vcpkg/installed/arm64-osx/lib -L/opt/homebrew/lib/ -lmicrohttpd -ljsonrpccpp-common -ljsonrpccpp-server -ljsonrpccpp-client -lcurl

INC	=	ecs36b_Common.h
INC_CL	=	car.h motorcycle.h auto.h
OBJ	=	car.o motorcycle.o auto.o

# rules.
all: 	

hw5client.h:		ecs36b_hw5.json
	jsonrpcstub ecs36b_hw5.json --cpp-server=hw5Server --cpp-client=hw5Client

hw5server.h:		ecs36b_hw5.json
	jsonrpcstub ecs36b_hw5.json --cpp-server=hw5Server --cpp-client=hw5Client 

car.o:		car.cpp car.h
	$(CC) -c $(CFLAGS) car.cpp $(LDFLAGS)

motorcycle.o:	motorcycle.cpp motorcycle.h
	$(CC) -c $(CFLAGS) Thing.cpp $(LDFLAGS) 

auto.o:	auto.cpp auto.h
	$(CC) -c $(CFLAGS) Thing.cpp $(LDFLAGS) 

ecs36b_JSON.o:		ecs36b_JSON.cpp ecs36b_Common.h ecs36b_Exception.h 
	$(CC) -c $(CFLAGS) ecs36b_JSON.cpp $(LDFLAGS) 

hw5client:	hw5client.o ecs36b_JSON.o $(OBJ)
	$(CC) -o hw5client hw5client.o ecs36b_JSON.o $(OBJ) $(LDFLAGS)

hw5server:	hw5server.o ecs36b_JSON.o $(OBJ)
	$(CC) -o hw5server hw5server.o ecs36b_JSON.o $(OBJ) $(LDFLAGS)

hw5Home:	hw5Home.o ecs36b_JSON.o $(OBJ)
	$(CC) -o hw5Home hw5Home.o ecs36b_JSON.o $(OBJ) $(LDFLAGS)

hw5Forest:	hw5Forest.o ecs36b_JSON.o $(OBJ)
	$(CC) -o hw5Forest hw5Forest.o ecs36b_JSON.o $(OBJ) $(LDFLAGS)

hw5GrandmasHouse:	hw5GrandmasHouse.o ecs36b_JSON.o $(OBJ)
	$(CC) -o hw5GrandmasHouse hw5GrandmasHouse.o ecs36b_JSON.o $(OBJ) $(LDFLAGS)

LittleRedRidingHood:		LittleRedRidingHood.o ecs36b_JSON.o $(OBJ)
	$(CC) -o LittleRedRidingHood LittleRedRidingHood.o ecs36b_JSON.o $(OBJ) $(LDFLAGS) 

clean:
	rm -f *.o *~ core hw5client.h hw5server.h hw5client hw5server hw5Home hw5Forest hw5GrandmasHouse LittleRedRidingHood