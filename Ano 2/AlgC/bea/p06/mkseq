# makefile para as sequencias
CC = gcc
CFLAGS = -std=c99 -Wall

OBJM = seqarray.o seqlist.o
HEADERS = seqarray.h seqlist.h

OBJECTS = $(OBJM) simseqarray.o simseqlist.o
EXES = seqarray seqlist

all:	$(EXES)

seqarray:	simseqarray.o $(OBJM)
	$(CC) $(CFLAGS) simseqarray.o $(OBJM) -o seqarray

seqlist:	simseqlist.o $(OBJM)
	$(CC) $(CFLAGS) simseqlist.o $(OBJM) -o seqlist

$(OBJM):	$(HEADERS)

clean:
	rm -f $(OBJECTS) *~

cleanall:	clean
	rm -f $(EXES)
