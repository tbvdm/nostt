CFLAGS  += -Wall -Wextra
LDFLAGS +=
LDLIBS   = -lcurl -ljson-c

OBJECTS  = nostt.o api.o

all: nostt

nostt: $(OBJECTS)
	$(CC) $(LDFLAGS) -o $@ $(OBJECTS) $(LDLIBS)

clean:
	rm -f *.o nostt

nostt.o: api.h
api.o:   api.h

.PHONY: all clean
