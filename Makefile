.PHONY: all build clean run

all: build

build:
	cmake -S . -B build
	cmake --build build

clean:
	cmake --build build --target clean
	rm -rf build

run: build
	./build/sdl-min.app/Contents/MacOS/sdl-min
