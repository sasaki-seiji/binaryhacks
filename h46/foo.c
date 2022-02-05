#include <string.h>

int foo(char *s)
{
	char buf[8];
	strcpy(buf, s);
	return strlen(buf);
}

