// my_strcpy.c
#include <stdio.h>

static inline char * strcpy( char *dest, const char* src )
{
	int d0, d1, d2 ;
	__asm__ __volatile__(
		"1:\tlodsb\n\t"
		"stosb\n\t"
		"testb %%al,%%al\n\t"
		"jne 1b"
		: "=&S"(d0), "=&D"(d1), "=&a"(d2)
		: "0"(src), "1"(dest) : "memory" ) ;
	return dest ;
}

int main( )
{
	char buf[100] ;
	strcpy( buf, "copied sring by my_strcpy" ) ;
	printf( "%s\n", buf ) ; 
	return 0 ;
}

