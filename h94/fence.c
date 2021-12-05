// fence.c
#include <pthread.h>

#define membar() asm volatile("mfence":::"memory")

volatile int lock_array[2] ;

void delay(int count)
{
	volatile int i;
	for (i = 0; i < count; i++)
		;
}

void routine(int me, volatile long *counter)
{
	int	other = 1 - me ; // me is 0 or 1

start_point:
	/* lock */
	lock_array[me] = 1 ;
	membar();
	if( lock_array[other] != 0 ) {
		lock_array[me] = 0 ;

		/* wait a moment */
		delay(50);

		goto start_point ;
	}

	/* critical section */
	++*counter;

	/* unlock */
	lock_array[me] = 0 ;
}
