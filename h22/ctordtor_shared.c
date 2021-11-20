#include <stdio.h>
#include "ctordtor_shared.h"
void f(void)
{
	printf("f\n");
}

__attribute((constructor)) void begin(void)
{
	printf("begin\n");
}

__attribute((destructor)) void end(void)
{
	printf("end\n");
}
