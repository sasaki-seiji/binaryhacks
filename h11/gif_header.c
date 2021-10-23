#include <stdio.h>
#include <string.h>

extern char _binary____para_gif_start[];
extern char _binary____para_gif_end[];
extern char _binary____para_gif_size[];

void gif_header(const char *p)
{
	char buf[4];
	short *size;
	buf[3] = '\0';

	strncpy(buf, p, 3);
	p += 3;
	printf("Signature=%s\n", buf);
	
	strncpy(buf, p, 3);
	p += 3;
	printf("Version=%s\n", buf);

	size = (short*)p;
	p += sizeof(short);
	printf("Width=%d\n", *size);

	size = (short*)p;
	p += sizeof(short);
	printf("Height=%d\n", *size);
}

int main()
{
	const char *start = _binary____para_gif_start;
	const char *end = _binary____para_gif_end;
	size_t size = (size_t)_binary____para_gif_size;

	printf("start=%p, end=%p, size=%lx\n", start, end, size);
	gif_header(start);
}
	
