output: main.o lib_finder.a
	g++ main.o -o out -L. lib_finder.a -std=c++17 -pthread

main.o: main.cpp
	g++ -c main.cpp -O2 -std=c++17

lib_finder.a: Finder.o
	ar rcs lib_finder.a Finder.o

Finder.o: Finder.cpp
	g++ -c Finder.cpp -std=c++17

clean:
	rm *.o *.a out
