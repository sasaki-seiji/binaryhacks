// singleton-main.cpp
#include <stdio.h>
#include <pthread.h>

#include "singleton.h"

#define LOOP_COUNT ( 10000 * 10000 )
#define NTHREAD	8

void* thread_func( void* param )
{
	int no = (int)param ;
	volatile Singleton *instance ;
	int i ;

	printf( "start thread#%d\n", no ) ;

	for( i = 0 ; i < LOOP_COUNT ; i++ ) {
		instance = Singleton::instance( ) ;
	}

	printf( "no = %d, instance = %p\n", no, instance ) ;
	return NULL ;
}

int main( )
{
	pthread_t tids[NTHREAD] ;
	int i ;
	int status ;

	for( i = 0 ; i < NTHREAD ; i++ ) {
		status = pthread_create( &tids[i], NULL, thread_func, (void*)i ) ;
		assert( status == 0 ) ;
	}

	for( i = 0 ; i < NTHREAD; i++ ) {
		status = pthread_join( tids[i], NULL ) ;
		assert( status == 0 ) ;
	}

	return 0 ;
}
