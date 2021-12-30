// main-c.c
#define _GNU_SOURCE
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <string.h>
#include "c-header.h"


pthread_barrier_t barrier;

volatile int entered = 0;

int excl_errors[NUM_THREADS];
int lock_errors[NUM_THREADS];
int unlock_errors[NUM_THREADS];

volatile int error_count = 0;

void delay(int count)
{
	volatile int i;
	for (i = 0; i < count; ++i) ;
}

void do_something(int no)
{
	if (__atomic_add_fetch(&entered, 1, __ATOMIC_SEQ_CST) > 1) {
		printf("[%d] exclusive error\n", no);
		excl_errors[no]++;
	}

	usleep(1000); /* 1ms */

	__atomic_add_fetch(&entered, -1, __ATOMIC_SEQ_CST);
}

void *thread_entry(void* arg)
{
	int no = (int)(intptr_t)arg;

	/* synchronize all thread_entry */
	pthread_barrier_wait(&barrier);

	need_to_sync(no);

	return NULL;
}

int main(void)
{
	pthread_t ths[NUM_THREADS];
	int i;
	int err;
	int lock_error, unlock_error, excl_error, join_error, error_count;
	struct timespec abs_time;

	err = pthread_barrier_init(&barrier, NULL, NUM_THREADS);
	if (err != 0) {
		printf("pthread_barrier_init fails: %s\n", strerror(err));
	}
	for (i = 0; i < NUM_THREADS; ++i) {
		err = pthread_create(&ths[i], NULL, thread_entry, 
								(void*)(intptr_t)i);
		if (err != 0) {
			printf("pthread_create fails: %s\n", strerror(err));
		}
	}
	
	abs_time.tv_sec = time(NULL) + JOIN_WAIT_SEC;
	abs_time.tv_nsec = 0;	
	join_error = 0;
	for (i = 0; i < NUM_THREADS; ++i) {
		err = pthread_timedjoin_np(ths[i], NULL, &abs_time);
		if (err != 0) {
			printf("[%d], pthread_timedjoin_np: %s\n", i, strerror(err));
			abs_time.tv_sec = time(NULL) + JOIN_WAIT_SEC;
			join_error++;
		}
	}
	
	pthread_barrier_destroy(&barrier);

	error_count = lock_error = unlock_error = excl_error = 0;
	for (i = 0; i < NUM_THREADS; ++i) {
		lock_error += lock_errors[i];
		unlock_error += unlock_errors[i];
		excl_error += excl_errors[i];
	}
	error_count += lock_error;
	error_count += unlock_error;
	error_count += excl_error;
	error_count += join_error;
			
	if (error_count > 0) {
		printf("lock=%d, unlock=%d, exclusive=%d, join=%d\n", 
			lock_error, unlock_error, excl_error, join_error);
	}
	return error_count ;
}

