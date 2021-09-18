TARGET = printf
CC = gcc
CPPFLAGS = -D_FORTIFY_SOURCE=0
CFLAGS_D = -g3
CFLAGS_W = -Wall -Wextra
CFLAGS_O = -O2
CFLAGS_F =
CFLAGS = $(CFLAGS_D) $(CFLAGS_W) $(CFLAGS_O) $(CFLAGS_F) $(FLAGS_OPT)
LDFLAGS =

.PHONY: all clean

all: $(TARGET)

clean:
	$(RM) $(TARGET) *.o a.out

