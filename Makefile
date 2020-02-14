all: circle
circle: geometry.cpp
	g++ -g -Wall geometry.cpp -o geometry