// c++-bad1.cpp
#include <boost/thread/recursive_mutex.hpp>

extern void do_something( void ) ;

void need_to_sync( )
{
	static boost::recursive_mutex m ;
	boost::recursive_mutex::scoped_lock lk(m) ;
		do_something( ) ;
}

