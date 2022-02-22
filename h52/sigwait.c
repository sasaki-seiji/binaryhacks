// sigwait.c

#include <stdlib.h>
#include <signal.h>
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

void *wait_for_sighup(void *dmy)
{
	int sig ;

	sigset_t ss;
	sigemptyset(&ss);
	sigaddset(&ss, SIGHUP);

	while (1) {
		if (sigwait(&ss, &sig) == 0) {
			printf("Hello async-signal-safe world!\n");
		}
	}
	return NULL;
}

int main()
{
	sigset_t ss;
	pthread_t pt;
	pthread_attr_t atr;

	sigemptyset(&ss);
	sigaddset(&ss, SIGHUP);
	sigprocmask(SIG_BLOCK, &ss, NULL);

	pthread_attr_init(&atr);
	pthread_attr_setdetachstate(&atr, PTHREAD_CREATE_DETACHED);
	pthread_create(&pt, &atr, wait_for_sighup, NULL);
	
	printf("main sleeping for 30 seconds\n");
	sleep(30);
	printf("main terminating\n");
	return 0;
} 
