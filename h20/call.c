// call.c
#include <stdio.h>
void foo()
{
	printf("aaa");
}
void efoo();
static void sfoo()
{
	printf("bbb");
}
//extern int edata;
void func()
{
	foo();
	efoo();
	sfoo();
//	edata = 123;
}
