CC = gcc
CFLAGS = -Wall

LK = gcc
LDFLAGS = -lpthread -lm

TARGETS = prodcon_msg

objs = queue_msg.o prodcon.o delays.o

all:	$(TARGETS)

prodcon_msg:	queue_msg.o prodcon.o delays.o
		$(LK) -o $@ $^ $(LDFLAGS)

$(objs):	%.o:	%.cpp queue.h
		$(CC) $(CFLAGS) -c -o $@ $<

clean:
		rm -f *.o *~

cleanall:	clean
		rm -f $(TARGETS)
