// heapexec2.c

#include <stdlib.h> // for malloc
#include <string.h> // for memcpy
#include <stdio.h> // for printf
#include <unistd.h> // for sysconf
#include <sys/mman.h> // for mprotect

int func(void)
{
	return 3.14 ;
}

void allow_execution(const void *addr)
{
	long pagesize = (int)sysconf(_SC_PAGESIZE) ;
	char *p = (char *)((long)addr & ~(pagesize - 1)) ;
	mprotect(p, pagesize * 10L, PROT_READ | PROT_WRITE | PROT_EXEC) ;
}

int main( )
{
	void *p = malloc(1000);
	memcpy(p, func, 1000);
	allow_execution(p);
	printf("PI equals to %d\n", ((int(*)(void))p)()) ; 
	return 0 ;
}


