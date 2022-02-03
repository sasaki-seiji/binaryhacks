// my_atoi.c
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <ctype.h> // for isdigit

int my_atoi(const char*s)
{
	int ret = 0;
	assert( s != NULL ) ;
	while( *s != '\0' && isdigit(*s) ) {
		const int dig = *s - '0' ;
		ret *= 10 ;
		ret += dig ;
		++s ; 
	}
	return ret ;
}

int main( int argc, char **argv )
{
	int val ;

	if( argc == 2 ) {
		val = my_atoi( argv[1] ) ;
		printf( "my_atoi(%s) is %d\n", argv[1], val ) ;
	}
	else {
		printf( "usage : %s <number>\n", argv[0] ) ;
	}
	return 0 ;
} 


