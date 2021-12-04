// c-good.c
#define _GNU_SOURCE // for PTHREAD_RECURSIVE_MUTEX_INITIALIZER_NP
#include <pthread.h>

extern void do_something( void ) ;

void need_to_sync( )
{
	static pthread_mutex_t m = PTHREAD_RECURSIVE_MUTEX_INITIALIZER_NP ;
	pthread_mutex_lock( &m ) ;
		do_something( ) ;
	pthread_mutex_unlock( &m ) ;
}

