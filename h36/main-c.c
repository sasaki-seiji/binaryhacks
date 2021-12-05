// main-c.c
#include <stdio.h>

extern void need_to_sync() ;

void do_something(void)
{
	printf("in lock\n") ;
}

int main(void)
{
	need_to_sync() ;
	return 0 ;
}

