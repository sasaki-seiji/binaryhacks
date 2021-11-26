// foo.c
#include <stdio.h>

extern void bar( ) ;
void foo( )
{
	printf("foo()\n");
	bar( ) ;
}


