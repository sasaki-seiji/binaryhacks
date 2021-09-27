#include <stdio.h>

extern char _binary____para_gif_start[];
extern char _binary____para_gif_end[];
extern char _binary____para_gif_size[];

int main()
{
	const char *start = _binary____para_gif_start;
	const char *end = _binary____para_gif_end;
	long size = (long)_binary____para_gif_size;

	printf("start=%p, end=%p, size=%lx\n", start, end, size);
}
	
