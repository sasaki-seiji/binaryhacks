#! /bin/sh
rm -f *.o *.so
rm -f fpic?.c fpic??.c fpic???.c
#num=1000
num=100
for i in `seq $num` ; do
	echo "#include <stdio.h>" > fpic$i.c
	echo "void func$i( ) {" >> fpic$i.c
	ruby -e "10000.times { puts 'printf( \"abc\" ) ;' }" >> fpic$i.c
	echo "}" >> fpic$i.c
	gcc -o fpic-no-pic$i.o -c fpic$i.c
	gcc -fPIC -o fpic-pic$i.o -c fpic$i.c
done
gcc -o fpic-no-pic.so -shared fpic-no-pic*.o
gcc -o fpic-pic.so -shared fpic-pic*.o
echo "int main( ) { return 0 ; }" > fpic-main.c
gcc -o fpic-no-pic fpic-main.c ./fpic-no-pic.so
gcc -o fpic-pic fpic-main.c ./fpic-pic.so 
