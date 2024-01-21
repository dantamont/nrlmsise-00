CFLAGS = -Wall -g -DINLINE
MFLAGS = -lm
CC = gcc $(CFLAGS)

nrlmsise-test    :     nrlmsise-00.o nrlmsise-00_test.o nrlmsise-00_data.o
	$(CC) -o nrlmsise-test nrlmsise-00.o nrlmsise-00_test.o \
                     nrlmsise-00_data.o $(MFLAGS)

nrlmsise-00.o :		src/nrlmsise-00.c include/nrlmsise-00.h
	$(CC) -c  src/nrlmsise-00.c

nrlmsise-00_test.o :	src/nrlmsise-00_test.c include/nrlmsise-00.h
	$(CC) -c  src/nrlmsise-00_test.c

nrlmsise-00_data.o :	src/nrlmsise-00_data.c include/nrlmsise-00.h
	$(CC) -c  src/nrlmsise-00_data.c

clean   :
	rm -rf  nrlmsise-test nrlmsise-00.o nrlmsise-00_test.o \
                   nrlmsise-00_data.o
