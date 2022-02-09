// async_signal_unsafe.c
#include <pthread.h>
#include <unistd.h>
#include <sys/time.h>
#include <signal.h>
#include <stdio.h>

static pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER ;

// 問題のある関数
void unsafe_func()
{
	//struct timeval tv = {20, 0};
	struct timeval tv = {10, 0};

	printf("unsafe_func is called\n");
	pthread_mutex_lock(&lock);
	select(0, NULL, NULL, NULL, &tv);
	pthread_mutex_unlock(&lock);
}

// シグナルハンドラ
void handler(int signo) 
{
	unsafe_func();
	_exit(1);
}


int main( )
{
	// シグナルハンドラの登録処理
	struct sigaction sa = {
		.sa_handler = handler,
		.sa_flags = 0
	};
	sigemptyset(&sa.sa_mask);
	sigaction(SIGHUP, &sa, NULL);

	// 問題のある関数の呼び出し
	unsafe_func();
	return 0 ;
} 
