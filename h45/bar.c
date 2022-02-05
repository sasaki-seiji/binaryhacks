// bar.c
#include <string.h>
#include <stdio.h>

static char buf[6] ;
int main(int argc, char **argv)
{
	if(argc != 2) {
		fprintf(stderr, "usage: %s <string>\n", argv[0]) ;
		return 1 ;
	}
	strcpy(buf, argv[1]) ;
	return 0 ;
} 


