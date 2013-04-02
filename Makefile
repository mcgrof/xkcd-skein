all: xkcd-skein

xkcd-skein: SHA3api_ref.o skein_block.o skein.o skein_debug.o xkcd-skein.o
	gcc -o $@ $^

clean:
	rm -f *.o xkcd-skein

dog:
	@echo 5b4da95f5fa08280fc9879df44f418c8f9f12ba424b7757de02bbdfbae0d4c4fdf9317c80cc5fe04c6429073466cf29706b8c25999ddd2f6540d4475cc977b87f4757be023f19b8f4035d7722886b78869826de916a79cf9c94cc79cd4347d24b567aa3e2390a573a373a48a5e676640c79cc70197e1c5e7f902fb53ca1858b6
