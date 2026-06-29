# Compiler prefix for cross-compilation
CC := $(CROSS_COMPILE)gcc

# Compiler flags
CFLAGS := -Wall -Werror -g

# Target executable
TARGET := writer

# Source file
SRC := writer.c

# Default target
all: $(TARGET)

# Build writer application
$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

# Clean target
clean:
	rm -f $(TARGET) *.o

.PHONY: all clean