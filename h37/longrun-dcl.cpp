// longrun-dcl.cpp
#include <stdio.h>
#include <pthread.h>
#include <string.h>
#include "singleton-dcl.h"
#include "const.h"

void *thread_entry(void* arg)
{
	Singleton *singleton;

	for (int i = 0; i < LOOP_COUNT; i++) {
		singleton = Singleton::instance();
	}

	return singleton;
}

int main(void)
{
	pthread_t ths[NUM_THREADS];

	for (int i = 0; i < NUM_THREADS; ++i) {
		int err = pthread_create(&ths[i], NULL, thread_entry, NULL);
		if (err != 0) {
			printf("pthread_create fails: %s\n", strerror(err));
		}
	}
	
	for (int i = 0; i < NUM_THREADS; ++i) {
		int err = pthread_join(ths[i], NULL);
		if (err != 0) {
			printf("[%d] pthread_join: %s\n", i, strerror(err));
		}
	}

	printf("instances=%d\n", Singleton::count_);
	return 0;
}

