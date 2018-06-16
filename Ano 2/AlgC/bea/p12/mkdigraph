# makefile para o dígrafo/grafo dinâmico
CC = gcc
CFLAGS = -Wall

OBJM = digraph.o queue.o
HEADERS = digraph.h queue.h

OBJECTS = $(OBJM) simdigraph.o testdigraph.o queue.o
EXES = sdig tdig

all:	$(EXES)

sdig:	simdigraph.o $(OBJM)
	$(CC) $(CFLAGS) simdigraph.o $(OBJM) -o sdig

tdig:	testdigraph.o $(OBJM)
	$(CC) $(CFLAGS) testdigraph.o $(OBJM) -o tdig

$(OBJM):	$(HEADERS)

clean:
	rm -f $(OBJECTS) *~

cleanall:	clean
	rm -f $(EXES) 
