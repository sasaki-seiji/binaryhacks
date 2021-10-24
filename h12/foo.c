#include <stdio.h>

short s1;
short s2 = 123;
static short s3;
static short s4 = 456;

static void foo()
{
	printf("foo s1=%d, s2=%d, s3=%d, s4=%d\n", s1, s2, s3, s4);
}

int main()
{
	foo();
	return 0;
}
