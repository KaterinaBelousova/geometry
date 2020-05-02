CFLAGS = -g -Wall -Werror
CC = g++
EXECUTABLE = prog
SOURCES = src/main.cpp src/split.cpp src/geom.cpp
OBJECTS = $(SOURCES: .c=build/.o)

all: $(SOURCES) $(EXECUTABLE)
$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@
# circle: 
# 	$(CC) $(CFLAGS) src/main.cpp -o build/main
# split:
# 	$(CC) $(CFLAGS) src/*.cpp -o build/main
clean: 
	rm -rf build/*.o
