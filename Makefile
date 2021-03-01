.SUFFIXES : .o .f90

LDFLAGS=
FFLAGS=-O3
FC=ftn

SRC=test_intent_routine.f90 test_intent.f90
OBJ=$(SRC:.f90=.o)
PRG=test_intent

main: $(PRG)

.f90.o: Makefile 
	$(FC) -c $(FFLAGS) $<

$(PRG):$(OBJ) Makefile 
	$(FC) $(LDFLAGS) -o $@ $(OBJ)


clean:
	rm -fr $(OBJ) $(PRG) *.mod
