CC=gcc

main: main.c
	$(CC) `pkg-config --cflags gtk+-3.0` main.c -o bin/main `pkg-config --libs gtk+-3.0`

run: main
	./bin/main

clean:
	rm -rf ./bin/*
