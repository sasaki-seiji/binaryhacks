// my_printf.c

#include <stdlib.h> // for NULL
#include <assert.h>
#include <stdarg.h> // for va_list
#include <stdio.h> // for vprintf
#include <syslog.h> // for vsyslog

__attribute__((format(printf, 1, 2 ))) 
void my_printf(const char *my_format, ...)
{
	va_list ap ;
	assert(my_format != NULL) ;
	va_start(ap, my_format) ;
	vprintf(my_format, ap) ;
	va_end(ap) ; 
	va_start(ap, my_format) ;
	vsyslog(LOG_ERR, my_format, ap) ;
	va_end(ap);
}

int main( )
{
	my_printf("using my_printf\n") ;
	my_printf("No.%d message is %s\n", 1, "hello") ;
	my_printf("No.%d message is %s\n", 2, "bye") ;
	my_printf("illegal format: %d\n", "illegal fomart");

	return 0 ;
}

