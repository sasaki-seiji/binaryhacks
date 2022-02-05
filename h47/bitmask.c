// bitmask.c
#include <stdio.h>

int main( )
{
	unsigned long n = 0 ;
	unsigned char *str ;
	unsigned char c = '\xff';
	str = &c;

	n |= (*str & 0xff) << 24 ;

	printf("answer = %lx\n", n) ;
	return 0 ;
} 
