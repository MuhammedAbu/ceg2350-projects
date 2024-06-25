default: Main.c Main-Add.c codeheader.h
		gcc -Wall Main.c -o Main.o -c
		gcc -Wall Main-Add.c -o Main-Add.o -c
link: Main.o Main-Add.o
		gcc -Wall -o program *.o
run: program
		./program

clean:
		 
		rm *.o
			rm program
