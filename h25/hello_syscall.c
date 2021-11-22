// hello_syscall.c
#include <asm/unistd.h> // for __NR_xxx
static int errno ;

int write( int fd, const char* buf, unsigned long count )
{
	int __res ;
	__asm__ volatile( "syscall"
		: "=a"(__res)
		: "0"(__NR_write), "D"((long)fd), "S"((long)buf), "d"((long)count)
		: "r11", "rcx", "memory" ) ;
	if( (unsigned)__res >= (unsigned)-127 ) {
		errno = -(__res) ;
		__res = -1 ;
	}
	return __res ;
}

int exit( int status )
{
	int __res ;
	__asm__ volatile( "syscall"
		: "=a"(__res)
		: "0"(__NR_exit), "D"((long)status)
		: "r11", "rcx", "memory" ) ;
	if( (unsigned)__res >= (unsigned)-127 ) {
		errno = -(__res) ;
		__res = -1 ;
	}
	return __res ;
}

void hello( )
{
	write( 1, "Hello World!\n", 13 ) ;
	exit( 0 ) ;
}

