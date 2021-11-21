// buitlin_clz.c
#include <stdio.h>

int main( )
{
	const unsigned int x = 0x0fffffffU ;
	printf( "%d\n", __builtin_clz(x) ) ;
	return 0 ;
}

