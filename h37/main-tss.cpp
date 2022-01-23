// main-tss.cpp
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <string.h>
#include <sys/resource.h>
#include "singleton-tss.h"

#define NUM_THREADS 100
#define NUM_DISTURBING_THREADS 100
#define JOIN_WAIT_SEC 10
#define RUNNING_USEC (10*1000) /* 10ms */

pthread_barrier_t barrier;

volatile int stop_req = 0;

void *disturbing_thread(void* arg)
{
	/* decrease disturbing_thread priority */
	setpriority(PRIO_PROCESS, 0, 5);
	for (;;) {
		if (__atomic_load_n(&stop_req, __ATOMIC_SEQ_CST)) return NULL;
	}

}

void *thread_entry(void* arg)
{
	/* decrease thread_entry priority */
	setpriority(PRIO_PROCESS, 0, 19);

	/* synchronize all thread_entry */
	pthread_barrier_wait(&barrier);

	Singleton *singleton = Singleton::instance();

	return singleton;
}

int main(void)
{
	pthread_t ths[NUM_THREADS];
	pthread_t disturbing_ths[NUM_DISTURBING_THREADS];
	int i;
	int err;

	/* increase main thread priority */
	setpriority(PRIO_PROCESS, 0, -10);

	err = pthread_barrier_init(&barrier, NULL, NUM_THREADS);
	if (err != 0) {
		printf("pthread_barrier_init fails: %s\n", strerror(err));
	}
	for (i = 0; i < NUM_DISTURBING_THREADS; ++i) {
		err = pthread_create(&disturbing_ths[i], NULL, disturbing_thread, 
								NULL);
		if (err != 0) {
			printf("pthread_create fails: %s\n", strerror(err));
		}
	}
	for (i = 0; i < NUM_THREADS; ++i) {
		err = pthread_create(&ths[i], NULL, thread_entry, NULL);
		if (err != 0) {
			printf("pthread_create fails: %s\n", strerror(err));
		}
	}
	
	usleep(RUNNING_USEC);
	__atomic_store_n(&stop_req, 1, __ATOMIC_SEQ_CST);
	for (i = 0; i < NUM_DISTURBING_THREADS; ++i) {
		err = pthread_join(disturbing_ths[i], NULL);
		if (err != 0) {
			printf("pthread_join[%d]: %s\n", i, strerror(err));
		}
	}

	struct timespec abs_time;
	abs_time.tv_sec = time(NULL) + JOIN_WAIT_SEC;
	abs_time.tv_nsec = 0;
	int join_error = 0;
	for (i = 0; i < NUM_THREADS; ++i) {
		if (join_error == 0) {
			err = pthread_timedjoin_np(ths[i], NULL, &abs_time);
			if (err != 0) {
				printf("[%d] pthread_timedjoin_np: %s\n", 
						i, strerror(err));
				join_error++;
			}
		}
		else {
			err = pthread_tryjoin_np(ths[i], NULL);
			if (err != 0) {
				if (join_error < 3)
					printf("[%d] pthread_tryjoin_np: %s\n", 
							i, strerror(err));
				join_error++;
			}
		}
	}
	
	pthread_barrier_destroy(&barrier);

	int error_count = 0;
	if (join_error > 0) {
		printf("join_error=%d\n",join_error);
		error_count += join_error;
	}
	int singleton_count = Singleton::count_;
	if (singleton_count != 1) {
		printf("singleton_count=%d\n", singleton_count);
		error_count += singleton_count - 1;
	}
	return error_count;
}

