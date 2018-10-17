#
# This makefile is provided as an example.  It can be modified
# to work for assignment 3 by replacing the 'abc123' entries
# with your UTSA id.  

# The 'run' command will only work if you
# have the appropriate text files in the same directory, and
# they have the same names
#


PROGRAMS = p3

CC = gcc
CFLAGS =

all: $(PROGRAMS)

tidy:
	rm -f ,* .,* *~ core a.out graphics.ps

clean:
	rm -f *.o *.a $(PROGRAMS)

run:
	./p3 -u p3Users.txt -c p3Command.txt

# *****************************
# compilations
cs1713p3Driver.o: cs1713p3Driver.c cs1713p3.h
	$(CC) $(CFLAGS) -c cs1713p3Driver.c

p3nra253.o: p3nra253.c cs1713p3.h
	$(CC) $(CFLAGS) -c p3nra253.c

# *****************************
# generate executable
p3: cs1713p3Driver.o p3nra253.o
	$(CC) $(CFLAGS) -o p3 cs1713p3Driver.o p3nra253.o 
