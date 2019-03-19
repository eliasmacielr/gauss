f77=gfortran

objects = gauss.o ge.o

gauss : $(objects)
	$(f77) -o gauss $(objects)

gauss.o : gauss.f
	$(f77) -c -o gauss.o gauss.f

ge.o : ge.f
	$(f77) -c -o ge.o ge.f

.PHONY : clean
clean : cleano
	-rm -f gauss

.PHONY : cleano
cleano :
	-rm -f $(objects)
