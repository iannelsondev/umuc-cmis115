CC=clang # or gcc

FRAMEWORKS:= -framework Foundation
LIBRARIES:= -lobjc

SOURCE=SongList.m Song.m Iannelsonfp.m

CFLAGS=-Wall -Werror -g -v $(SOURCE)
LDFLAGS=$(LIBRARIES) $(FRAMEWORKS)
OUT=-o Iannelsonfp

all:
	    $(CC) $(CFLAGS) $(LDFLAGS) $(OUT)
