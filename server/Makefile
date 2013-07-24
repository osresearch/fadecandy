#######################################################
# Environment setup

INCLUDES = -I/usr/local/include/libusb-1.0
LIBS = -L/usr/local/lib -lm -lusb-1.0 -lstdc++

#######################################################

TARGET := fcserver

CPP_FILES = \
	main.cpp \
	fcserver.cpp

# CPPFLAGS = compiler options for C and C++
CPPFLAGS = -Wall -Wno-tautological-constant-out-of-range-compare -g -Os $(INCLUDES)

# compiler options for C++ only
CXXFLAGS = -std=gnu++0x -felide-constructors -fno-exceptions -fno-rtti

# linker options and libraries
LDFLAGS = -Os

OBJS := $(CPP_FILES:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

# compiler generated dependency info
-include $(OBJS:.o=.d)

clean:
	rm -f *.d *.o $(TARGET)

.PHONY: clean all