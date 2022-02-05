#include <string.h>

int bar(char *s)
{
	char buf[4];
	strcpy(buf, s);
	return strlen(buf);
}

int main()
{
	bar("long string that is enough to destroy stack frame of function");
	return 0;
}
