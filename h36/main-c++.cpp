// main-c++.cpp
#include <iostream>
#include <pthread.h>
#include <unistd.h>
#include <string.h>

#define NUM_THREADS 1000
#define LOOP_COUNT 1
pthread_barrier_t barrier;

extern void need_to_sync() ;

volatile int entered = 0;
volatile int error_count = 0;;

void do_something(void)
{
	if (++entered > 1) {
		++error_count;
	}

	usleep(1000); /* 1ms */

	--entered;
}

void *thread_entry(void* arg)
{
	int i;
	pthread_barrier_wait(&barrier);

	for (i = 0; i < LOOP_COUNT; ++i) {
		need_to_sync();
	}

	return NULL;
}

int main(void)
{
	pthread_t ths[NUM_THREADS];
	int i;
	int err;

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
	
	/*
	sleep(5);
	printf("entering=%d, error_count=%d\n", entering, error_count);
	*/

	for (i = 0; i < NUM_THREADS; ++i) {
		pthread_join(ths[i], NULL);
	}
	
	pthread_barrier_destroy(&barrier);

	if (error_count > 0) {
		printf("error_count=%d\n", error_count);
	}
	return 0 ;
}

