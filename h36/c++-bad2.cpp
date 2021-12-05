// c++-bad2.cpp
#include <boost/thread/recursive_mutex.hpp>

extern void do_something(void) ;

namespace /* anonymous */ { boost::recursive_mutex m ; }
void need_to_sync()
{
	boost::recursive_mutex::scoped_lock lk(m) ;
		do_something() ;
}

