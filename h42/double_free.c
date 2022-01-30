// double_free.c

#include <stdlib.h>

int main( )
{
	void *p, *q ;

	p = malloc( 100 ) ;
	q = malloc( 200 ) ;
	free( p ) ;
	free( q ) ; q = NULL ;
	free( p ) ;
	free( q ) ;

	return 0 ;
} 


