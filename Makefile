CXX=g++
CPPFLAGS=-Wall -Werror

TARGET=linecount
SRCS=$(TARGET).cc

all: $(TARGET)

$(TARGET): $(SRCS) 

tests: test
test: $(TARGET)
	-./test.1
	-./test.2
	-./test.3
	-./test.4
	-./test.5

clean:
	rm -f $(TARGET) *.o test.?.*
