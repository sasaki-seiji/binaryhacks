#include <stdio.h>

void foo(void)
{
	printf("foo\n");
}

void bar(void) __attribute__((weak, alias("foo")));

int main(void)
{
	foo();
	bar();
}
