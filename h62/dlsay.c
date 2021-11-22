// dlsay.c
#include <stdlib.h>
#include <stdio.h>
#include <dlfcn.h>

int main( int argc, char *argv[] )
{
	void	*handle ;
	char	*(*msg)() ;

	handle = dlopen( argv[1], RTLD_LAZY ) ;
	if( handle == NULL ) {
		fprintf( stderr, "load error %s: %s\n", argv[1], dlerror( ) ) ;
		exit( 1 ) ;
	}
	msg = (char *(*)())dlsym( handle, argv[2] ) ;
	if( msg == NULL ) {
		fprintf( stderr, "dlsym error %s: %s\n", argv[2], dlerror( ) ) ;
		exit( 1 ) ;
	} 
	printf( "%s\n", (*msg)( argc > 3 ? argv[3] : NULL ) ) ;
	dlclose( handle ) ;

	return 0 ;
}


