# Makefile for HW 2 f2022, ecs36b

CC = g++ -std=c++14

CFLAGS = -g -I/usr/include/jsoncpp



LDFLAGS = -fopenmp -ljsoncpp -L~/vcpkg/installed/arm64-osx/lib -L/opt/homebrew/lib/ -lmicrohttpd -ljsonrpccpp-common -ljsonrpccpp-server -ljsonrpccpp-client -lcurl

# INC	=	ecs36b_Common.h
# INC_CL	=	car.h motorcycle.h auto.h
# OBJ	=	car.o motorcycle.o auto.o

# rules.
all: 	main


car.o:		car.cpp car.h auto.h
	$(CC) -c $(CFLAGS) car.cpp $(LDFLAGS)

motorcycle.o:	motorcycle.cpp motorcycle.h auto.h
	$(CC) -c $(CFLAGS) motorcycle.cpp $(LDFLAGS) 

auto.o:	auto.cpp auto.h
	$(CC) -c $(CFLAGS) auto.cpp $(LDFLAGS) 

main.o: main.cpp car.h auto.h motorcycle.h
	$(CC) -c $(CFLAGS) main.cpp $(LDFLAGS) 

main: car.o main.o auto.o motorcycle.o
	g++ -std=c++14 main.o car.o motorcycle.o auto.o -o main $(LDFLAGS)

clean:
	rm -f *.o *~ core main