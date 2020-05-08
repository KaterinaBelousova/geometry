CFLAGS = -Wall -Werror
CC = g++ -std=c++11
EXECUTABLE = bin/prog
TEST = bin/test
SOURCES = src/main.cpp src/split.cpp src/geom.cpp src/read-fill.cpp src/intersections.cpp
OBJECTS = build/src/main.o build/src/geom.o build/src/split.o build/src/read-fill.o build/src/intersections.o
OBJECTS_T = build/test/test_intersect.o
.PHONY: all clean test_run run
all: $(SOURCES) $(EXECUTABLE) $(TEST) test_run

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $(EXECUTABLE) -lm

build/src/main.o: src/main.cpp
	$(CC) $(CFLAGS) -c src/main.cpp -o build/src/main.o

build/src/geom.o: src/geom.cpp
	$(CC) $(CFLAGS) -c src/geom.cpp -o build/src/geom.o

build/src/split.o: src/split.cpp
	$(CC) $(CFLAGS) -c src/split.cpp -o build/src/split.o

build/src/read-fill.o: src/read-fill.cpp
	$(CC) $(CFLAGS) -c src/read-fill.cpp -o build/src/read-fill.o

build/src/intersections.o: src/intersections.cpp 
	$(CC) $(CFLAGS) -c src/intersections.cpp -o build/src/intersections.o

build/test/test_intersect.o: test/test_intersect.cpp 
	$(CC) -I thirdparty -I src -c test/test_intersect.cpp -o build/test/test_intersect.o

$(TEST): $(OBJECTS_T) 
	$(CC) $(CFLAGS) build/src/geom.o build/src/split.o build/src/read-fill.o build/src/intersections.o $(OBJECTS_T) -o bin/test
run: all
	bin/prog
test_run:
	bin/test
clean: 
	rm -rf build/src/*.o
	rm -rf build/test/*.o
	rm -rf bin/*


