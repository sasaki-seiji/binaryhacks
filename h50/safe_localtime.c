// safe_localtime.c
#include <time.h> // for time_t

struct tm *localtime( const time_t *timer )
{
	static __thread struct tm tmbuf ;
	return localtime_r( timer, &tmbuf ) ;
}

