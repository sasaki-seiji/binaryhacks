// my_strcpy2.c
#include <stdio.h>

static inline char * strcpy( char *dest, const char* src )
{
	__asm__ __volatile__(
		"1:\tlodsb\n\t"
		"stosb\n\t"
		"testb %%al,%%al\n\t"
		"jne 1b"
		: 
		: "S"(src), "D"(dest) : "memory" ) ;
	return dest ;
}

int main( )
{
	char buf[100] ;
	strcpy( buf, "copied sring by my_strcpy" ) ;
	printf( "%s\n", buf ) ; 
	return 0 ;
}

