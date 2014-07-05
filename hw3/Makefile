CC=clang # or gcc

FRAMEWORKS:= -framework Foundation
LIBRARIES:= -lobjc

SOURCE=Wheeled.m Cars.m hw3.m

CFLAGS=-Wall -Werror -g -v $(SOURCE)
LDFLAGS=$(LIBRARIES) $(FRAMEWORKS)
OUT=-o hw3 

all:
	    $(CC) $(CFLAGS) $(LDFLAGS) $(OUT)
