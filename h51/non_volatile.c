// non_volatile.c

#include <signal.h> 
#include <stdlib.h>

static int sig = 0 ;
void handler(int signo) 
{
	sig = 1;
}

int main( )
{
	struct sigaction sa = {
		.sa_handler = handler,
		.sa_flags = 0
	};
	sigemptyset(&sa.sa_mask);
	sigaction(SIGHUP, &sa, NULL);
	sigaction(SIGINT, &sa, NULL); // 2022.02.09 add

	while(sig == 0) ;
	return 0 ;
} 
