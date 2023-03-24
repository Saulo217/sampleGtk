CC=gcc

run: main
	./bin/main

main: main.c
	$(CC) `pkg-config --cflags gtk+-3.0` main.c -o bin/main `pkg-config --libs gtk+-3.0`

clean:
	rm -rf ./bin/*
