// c-bad-dly.c
#define _GNU_SOURCE // for PTHREAD_RECURSIVE_MUTEX_INITIALIZER_NP
#include <stdio.h>
#include <string.h>
#include <pthread.h>
#include <unistd.h>
#include "c-header.h"

#define NDELAY 10000

void need_to_sync(int no)
{
	static pthread_mutex_t m;
	static volatile int initialized = 0;
	pthread_mutexattr_t mattr;
	int err;

	if (initialized == 0) {
		delay(NDELAY);
		initialized = 1;
		
		/* initialize mutex at first call of need_to_sync() */
		pthread_mutexattr_init(&mattr);
		pthread_mutexattr_settype(&mattr, PTHREAD_MUTEX_RECURSIVE_NP);
		pthread_mutex_init(&m, &mattr);
	}

	err = pthread_mutex_lock(&m) ;
	if (err != 0) {
		printf("[%d] pthread_mutex_lock: %s\n", no, strerror(err));
		lock_errors[no]++;
	}

		do_something(no) ;

	err = pthread_mutex_unlock(&m) ;
	if (err != 0) {
		printf("[%d] pthread_mutex_unlock: %s\n", no, strerror(err));
		unlock_errors[no]++;
	}
}

