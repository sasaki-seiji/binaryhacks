#include <stdio.h>

short s1;
short s2 = 123;
static short s3;
static short s4 = 456;

void foo()
{
	printf("foo\n");
}

int main()
{
	foo();
	return 0;
}
