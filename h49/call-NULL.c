// call-NULL.c
#include <stdio.h>
#include "foo.h"

int main()
{
	foo("foo", "bar", "baz", "something", "other", NULL);
	return 0;
} 
