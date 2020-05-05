CFLAGS = -g -Wall -Werror
CC = g++
EXECUTABLE = prog
SOURCES = src/main.cpp src/split.cpp src/geom.cpp src/read-fill.cpp src/intersections.cpp
#OBJECTS = $(SOURCES: .cpp=build/.o)
OBJECTS=build/main.o build/geom.o build/split.o build/read-fill.o build/intersections.o
all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o bin/prog 

build/main.o: $(SOURCES)
	$(CC) $(CFLAGS) -c src/main.cpp -o build/main.o

build/geom.o: $(SOURCES)
	$(CC) $(CFLAGS) -c src/geom.cpp -o build/geom.o

build/split.o: $(SOURCES)
	$(CC) $(CFLAGS) -c src/split.cpp -o build/split.o

build/read-fill.o: $(SOURCES)
	$(CC) $(CFLAGS) -c src/read-fill.cpp -o build/read-fill.o

build/intersections.o: $(SOURCES)
	$(CC) $(CFLAGS) -c src/intersections.cpp -o build/intersections.o
	
clean: 
	rm -rf build/*.o
	rm -rf bin/*

.PHONY: all clean
