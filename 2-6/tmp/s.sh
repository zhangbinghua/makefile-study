gcc -o hello.o -c hello.c
ar rcs libhello.a hello.o
gcc -o test main.c -L./ -lhello
./test 
