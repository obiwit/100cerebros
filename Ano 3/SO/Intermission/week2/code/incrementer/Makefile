CC = g++

CFLAGS = -Wall -O3

LK = g++

LDFLAGS = -lm

TARGETS = incrementer_unsafe incrementer_safe

all:		$(TARGETS)

incrementer_unsafe:    	incrementer.o inc_mod_unsafe.o bwdelay.o
			$(LK) -o $@ $^ $(LDFLAGS)

incrementer_safe:	incrementer.o inc_mod_safe.o bwdelay.o
			$(LK) -o $@ $^ $(LDFLAGS)

$(objs):	%.o:	%.cpp
		$(CC) $(CFLAGS) -c -o $@ $<

clean:
			rm -f *.o *~

cleanall:		clean
			rm -f $(TARGETS)
