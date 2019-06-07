

MAIN_EXEC := build/hello

.PHONY: all build run clean
all: run


build: build/Makefile
	cd build && make > /dev/null

build/Makefile: CMakeLists.txt
	-mkdir build
	cd build && cmake ../

run: build
	$(MAIN_EXEC)

clean:
	-rm -R build

clean-idea:
	-rm -R src/cmake-build-debug
	-rm -R src/.idea