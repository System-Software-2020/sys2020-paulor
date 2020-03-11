CC=gcc
LIB_DIR=./lib
SRC_DIR=./src
BIN=main

all: foo.o main001.o
	ar crs libfoo.a $<
	$(CC) -L. -lfoo $^ -o $(BIN) 

install: 
	mv libfoo.a $(prefix)/usr/lib/
	mv lib/foo.h $(prefix)/usr/include/
	mv $(BIN) $(prefix)/usr/bin/

uninstall:
	rm $(prefix)/usr/lib/libfoo.a
	rm $(prefix)/usr/include/foo.h	
	rm $(prefix)/usr/bin/$(BIN)

foo.o: $(LIB_DIR)/foo.c
	$(CC) -c -I$(LIB_DIR) $<

main001.o: $(SRC_DIR)/main001.c
	$(CC) -c -I$(LIB_DIR) $<

.PHONY .clean 

clean:
	rm -f *.o
	rm -f *.a