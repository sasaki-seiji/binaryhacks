#include <stdio.h>
__attribute__((constructor)) void begin()
{
	printf("begin\n");
}
__attribute__((destructor)) void end()
{
	printf("end\n");
}
