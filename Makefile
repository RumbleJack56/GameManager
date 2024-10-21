all:
	g++ main.cpp -o output -Isrc -Isrc/include -Iutils -Lsrc/lib
	./output
