// foo.c
#include <stdio.h>
#include <stdarg.h>
#include "foo.h"

void foo(const char *name, ...)
{
	va_list va;
	char * p;

	va_start(va, name) ;
	printf("name = %s:", name) ;

	while((p = va_arg(va, char*))) {
		printf(" %s", p) ;
	}
	printf("\n") ;
}

