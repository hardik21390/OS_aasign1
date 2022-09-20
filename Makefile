os:
	nasm -f elf64 -l a1.lst a1.asm
	gcc a1.o -no-pie
	./a.out
