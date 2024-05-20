CC = g++
CFLAGS = -std=c++11 -Wall -pedantic
SOURCE = main.cpp

ifeq ($(OS),Windows_NT)
	RM = del
	TARGET = main.exe
else
	RM = rm
	TARGET = main
endif

all:
	$(CC) $(CFLAGS) -x c++ -o $(TARGET) $(SOURCE)

clean:
	echo $(OS)
	$(RM) ./$(TARGET) ./$(basename $(SOURCE)).s

run: clean all
	./$(TARGET)

asm:
	$(CC) $(CFLAGS) -x c++ -S $(SOURCE) -o $(basename $(SOURCE)).s