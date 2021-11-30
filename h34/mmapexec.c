// heapexec.c

#include <stdlib.h> // for malloc
#include <string.h> // for memcpy
#include <stdio.h> // for printf
#include <sys/mman.h> // for mmap

int func(void)
{
	return 3;
}

int main( )
{
	void *p = mmap(NULL, 1000, PROT_EXEC | PROT_READ | PROT_WRITE, 
					MAP_PRIVATE | MAP_ANONYMOUS, -1, 0 ) ;
	memcpy(p, func, 1000);
	int (*fp)(void) = p;
	printf("PI equals to %d\n", fp()); 

	return 0 ;
}


