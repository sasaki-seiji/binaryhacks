#include <stdio.h>
#include "ctordtor_shared.h"
void f(void)
{
	printf("f\n");
}

__attribute__((constructor)) void begin(void)
{
	printf("begin\n");
}

__attribute__((destructor)) void end(void)
{
	printf("end\n");
}
