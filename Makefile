CC = g++
CFLAGS = -std=c++11 -Wall -pedantic
TARGET = main
SOURCES = main.cpp fibonacci.cpp
HEADERS = fibonacci.h

ifeq ($(OS),Windows_NT)
	RM = del
	EXECUTABLE = $(TARGET).exe
else
	RM = rm
	EXECUTABLE = $(TARGET)
endif

all: $(TARGET)

$(TARGET): $(SOURCES) $(HEADERS)
	$(CC) $(CFLAGS) -o $(EXECUTABLE) $(SOURCES)

clean:
	$(RM) $(EXECUTABLE)

run: all
	./$(EXECUTABLE)

asm: $(SOURCES)
	$(CC) $(CFLAGS) -S $(SOURCES)
