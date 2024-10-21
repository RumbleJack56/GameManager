# Compiler and common flags
CC = g++
CFLAGS = -Isrc -Isrc/include -Iutils
LDFLAGS = -Lsrc/lib -lraylib

# Detect OS
UNAME_S := $(shell uname -s)

# Platform-specific settings
ifeq ($(UNAME_S), Linux)
    # Linux-specific flags
    PLATFORM_FLAGS = -lGL -lGLU -lX11 -lpthread -lrt -lm
endif

ifeq ($(UNAME_S), Darwin)
    # macOS-specific flags
    PLATFORM_FLAGS = -framework OpenGL -framework Cocoa -framework IOKit -framework CoreFoundation
endif

ifeq ($(OS), Windows_NT)
    # Windows-specific flags
    PLATFORM_FLAGS = -lgdi32 -lopengl32 -lwinmm
endif

# Target
output: main.cpp
	$(CC) main.cpp -o output $(CFLAGS) $(LDFLAGS) $(PLATFORM_FLAGS)
	./output
# Clean up generated files
clean:
	rm -f output
