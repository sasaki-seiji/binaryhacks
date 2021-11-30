// heapexec.c

#include <stdlib.h> // for malloc
#include <string.h> // for memcpy
#include <stdio.h> // for printf

double func( void )
{
	return 3.14 ;
}

int main( )
{
	void *p = malloc( 1000 ) ;
	memcpy( p, func, 1000 ) ;
	printf( "PI equals to %g\n", ( ( double(*)(void) )p )( ) ) ; 
	return 0 ;
}


