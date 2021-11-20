#include <stdio.h>
__attribute__((weak)) void f(void)
{
	printf("weak_sub.c\n");
}
