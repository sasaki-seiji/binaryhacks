// bfmain_c++.cpp

#include <stdio.h>

void foo( ) 
{
	printf( "hello, before main\n" ) ;
}
namespace { struct foo_caller { foo_caller() { foo() ; } }caller ; }

int main( )
{
	printf( "hello, world\n" ) ;
	return 0 ;
}


