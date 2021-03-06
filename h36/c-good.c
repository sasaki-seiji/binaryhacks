// c-good.c
#define _GNU_SOURCE // for PTHREAD_RECURSIVE_MUTEX_INITIALIZER_NP
#include <stdio.h>
#include <string.h>
#include <pthread.h>
#include "c-header.h"

void need_to_sync(int no)
{
	int err;

	static pthread_mutex_t m = PTHREAD_RECURSIVE_MUTEX_INITIALIZER_NP ;
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

