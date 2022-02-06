// broken.c
#include <stdio.h>
#include <time.h>
#include <pthread.h>
#include <assert.h>

void print_tm(const char* header, const struct tm* ptm)
{
	printf("%s:\n  %04d/%02d/%02d %02d:%02d:%02d\n",
			header, 
			ptm->tm_year + 1900, ptm->tm_mon + 1, ptm->tm_mday,
			ptm->tm_hour, ptm->tm_min, ptm->tm_sec);
}

void* thread_routine(void* param)
{
	time_t zero = 0;
	struct tm * tmZero;

	tmZero = localtime(&zero); 
	print_tm("Unix originated at", tmZero);
	
	return NULL;
}

int main()
{
	pthread_t tid;
	int status;
	struct tm * tmNow;
	time_t now;
	
	now = time(NULL);
	tmNow = localtime(&now); 
	print_tm("now", tmNow);

	status = pthread_create(&tid, NULL, thread_routine, NULL);
	assert(status == 0);
	pthread_join(tid, NULL);

	print_tm("display now again", tmNow);
	return 0;
}

