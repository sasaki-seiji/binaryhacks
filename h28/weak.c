// weak.c

#include <stdio.h>
extern double sqrt( double ) __attribute__((weak)) ;

void func(  )
{
	if( sqrt ) {
		printf( "%f\n", sqrt(10.0 ) ) ;
	} 
	else {
		printf( "sqrt isn't available\n" ) ;
	}
}


