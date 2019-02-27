CC = gcc
CFLAGS = -Wall

LK = gcc
LDFLAGS = -lpthread -lm

TARGETS = prodcon_unsafe prodcon_safe

objs = fifo_unsafe.o prodcon.o delays.o

all:	$(TARGETS)

prodcon_unsafe:	fifo_unsafe.o prodcon.o delays.o
		$(LK) -o $@ $^ $(LDFLAGS)

prodcon_safe:	fifo_safe.o prodcon.o delays.o
		$(LK) -o $@ $^ $(LDFLAGS)

$(objs):	%.o:	%.cpp fifo.h
		$(CC) $(CFLAGS) -c -o $@ $<

clean:
		rm -f *.o *~

cleanall:	clean
		rm -f $(TARGETS)
