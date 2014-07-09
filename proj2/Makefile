CC=clang # or gcc

FRAMEWORKS:= -framework Foundation
LIBRARIES:= -lobjc

SOURCE=Wheeled.m Cars.m proj2.m

CFLAGS=-Wall -Werror -g -v $(SOURCE)
LDFLAGS=$(LIBRARIES) $(FRAMEWORKS)
OUT=-o proj2

all:
	    $(CC) $(CFLAGS) $(LDFLAGS) $(OUT)
