// bfmain_gcc.c

#include <stdio.h>

__attribute__((constructor))
void foo( ) 
{
	printf( "hello, before main\n" ) ;
}

int main( )
{
	printf( "hello, world\n" ) ;
	return 0 ;
}


