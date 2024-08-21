CXX=g++
CPPFLAGS=-Wall -Werror

TARGET=linecount
SRCS=$(TARGET).cc

all: $(TARGET)

$(TARGET): $(SRCS) 

tests: test
test: $(TARGET)
	-(cd .protected && ./test.1)
	-(cd .protected && ./test.2)
	-(cd .protected && ./test.3)
	-(cd .protected && ./test.4)
	-(cd .protected && ./test.5)

clean:
	rm -f $(TARGET) *.o .protected/test.?.*
