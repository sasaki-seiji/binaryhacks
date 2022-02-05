// bar2.c
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
	if(argc != 2) {
		fprintf(stderr, "usage: %s <size>\n", argv[0]) ;
		return 1 ;
	}
	// コピー先のメモリサイズが実行時に決まる例
	char *buf = malloc(atoi(argv[1]));
	strcpy(buf, "hello!") ;
	return 0 ;
} 
