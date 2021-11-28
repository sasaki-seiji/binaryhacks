// foo.cpp

#include <stdio.h>

void foo( ) 
{
	printf( "hello, before main\n" ) ;
}
namespace { struct foo_caller { foo_caller() { foo() ; } }caller ; }



