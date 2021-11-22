// hello.c

#include <stdio.h>
char *hello( char *arg )
{
	static char buf[4049] ;
	snprintf( buf, sizeof buf, "hello, %s", arg ) ;
	return buf ;
}

