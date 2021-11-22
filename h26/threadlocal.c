// threadlocal.c
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include <stdint.h> // for intptr_t

#define THREADS	3
__thread int tls ;
int global ;

void *func( void *arg )
{
	int num = (int)(intptr_t)arg ;
	tls = num ;
	global = num ;
	sleep(1) ;
	printf( "Thread=%d tls=%d global=%d\n", num, tls, global ) ;

	return NULL ;
}

int main( )
{
	int	ret ;
	pthread_t	thread[THREADS] ;
	int	num ;

	for( num = 0 ; num < THREADS ; num++ ) {
		ret = pthread_create( &thread[num], NULL, &func, 
								(void*)(intptr_t)num ) ;
		if( ret ) {
			printf( "error pthread_create\n" ) ;
			exit( 1 ) ;
		}
	}

	for( num = 0 ; num < THREADS ; num++ ) {
		ret = pthread_join( thread[num], NULL ) ;
		if( ret ) {
			printf( "error pthread_join\n" ) ;
			exit( 1 ) ;
		}
	}

	return 0 ;
} 


