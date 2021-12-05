// main.c
#include <stdio.h>
#include <stdint.h> /* intptr_t */
#include <pthread.h>

#define	LOOP_COUNT		10000000L
#define PRINT_PERIOD 	1000000L

volatile long counter = 0L;

void routine(int me, volatile long *counter) ;
void delay(int count);

void* thread_routine(void *arg)
{
	int me = (int)(intptr_t)arg ;
	long n ;

	for(n = 0 ; n < LOOP_COUNT ; n++) {
		routine(me, &counter) ;
		if ((n % PRINT_PERIOD) == 0) {
			printf("(%ld)th#%d\n", n, me) ;
		}
		delay(100);
	}

	return NULL ;
}

int main( void )
{
	pthread_t	th0, th1 ;

	pthread_create( &th0, NULL, thread_routine, (void*)(intptr_t)0 ) ;
	pthread_create( &th1, NULL, thread_routine, (void*)(intptr_t)1 ) ;
	

	pthread_join( th0, NULL ) ;
	pthread_join( th1, NULL ) ;

	printf("counter: %ld\n", counter);
	return 0 ;
}

