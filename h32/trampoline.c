// trampoline.c
#include <stdio.h>

void other( void (*funcp)() )
{
	funcp( );
}

void outer( void )
{
	int a = 10 ;

	void inner( void )
	{
		printf( "outer's a is %d\n", a ) ;
	}

	other( inner ) ;
}

int main( )
{
	outer( ) ;
	return 0 ;
}


