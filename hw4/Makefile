CC=clang # or gcc

FRAMEWORKS:= -framework Foundation
LIBRARIES:= -lobjc

SOURCE=SongList.m Song.m Iannelsonhw4.m

CFLAGS=-Wall -Werror -g -v $(SOURCE)
LDFLAGS=$(LIBRARIES) $(FRAMEWORKS)
OUT=-o hw4

all:
	    $(CC) $(CFLAGS) $(LDFLAGS) $(OUT)
