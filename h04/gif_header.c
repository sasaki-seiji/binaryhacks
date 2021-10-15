#include <stdio.h>

extern const unsigned char objname[];

int main()
{
	const unsigned char *p = objname;
	char signature[3+1];
	char version[3+1];
	short width, height;
	short *wp;
	int i;

	for (i = 0; i < 3; ++i) signature[i] = *p++;
	signature[i] = '\0';
	for (i = 0; i < 3; ++i) version[i] = *p++;
	version[i] = '\0';
	wp = (short*)p; /* p is even */
	width = *wp++;
	height = *wp;
	
	printf("signature: %s\n", signature);
	printf("version: %s\n", version);
	printf("width: %d\n", width);
	printf("height: %d\n", height);

	return 0;
}
