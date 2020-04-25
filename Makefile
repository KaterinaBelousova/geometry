all: 
circle: 
	g++ -g -Wall -Werror src/main.cpp -o build/main
split:
	g++ -g -Wall -Werror src/*.cpp -o build/main
