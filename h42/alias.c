// alias.c
#include <stdio.h>

int main( int argc, char **argv )
{
	/* short(=16bit)で書き込んで*/
	((short*)&argc)[0] |= 1 ;
	((short*)&argc)[1] |= 1 ;
	/* int(=32bit)で読む */
	printf( "%d\n", argc ) ;
	return 0 ;
} 


