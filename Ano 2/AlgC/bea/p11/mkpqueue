# makefile para a fila com prioridade
CC = gcc
CFLAGS = -ansi -Wall

OBJM = pqueue.o
HEADERS = pqueue.h

OBJECTS = $(OBJM) testpqueue.o simpqueue.o
EXES = tpq spq

all:	$(EXES)

tpq:	testpqueue.o $(OBJM)
	$(CC) $(CFLAGS) testpqueue.o $(OBJM) -o tpq

spq:	simpqueue.o $(OBJM)
	$(CC) $(CFLAGS) simpqueue.o $(OBJM) -o spq

$(OBJM):	$(HEADERS)

clean:
	rm -f $(OBJECTS) *~

cleanall:	clean
	rm -f $(EXES)
