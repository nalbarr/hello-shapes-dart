PROJ=hello-shapes-dart
SRC=main.dart
BIN=bin/$(SRC)

all: run

clean:

build: $(SRC)

run:
	dart $(BIN)
