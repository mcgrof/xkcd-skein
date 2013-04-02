all: xkcd-skein

xkcd-skein: SHA3api_ref.o skein_block.o skein.o skein_debug.o xkcd-skein.o
	gcc -o $@ $^

clean:
	rm -f *.o xkcd-skein
