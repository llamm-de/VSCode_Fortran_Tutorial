# variables
FC=gfortran
CFLAGS=-c -g -Og -Wall

# linking
a.out: main.o
	$(FC) main.o

# compiling
main.o: main.f90
	$(FC) $(CFLAGS) main.f90


# cleanup
clean:
	rm *.o a.out

# run
run:
	make
	./a.out
