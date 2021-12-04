// main-c++.cpp
#include <iostream>

extern void need_to_sync( ) ;

void do_something( void )
{
	std::cout << "in lock" << std::endl ;
}

int main( void )
{
	need_to_sync( ) ;
	return 0 ;
}

