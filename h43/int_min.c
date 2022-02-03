// int_min.c
#include <stdio.h>
#include <limits.h>

int main( )
{
	volatile int a = -1 ;
	printf( "%d\n", INT_MIN / a ) ;
	return 0 ;
} 


