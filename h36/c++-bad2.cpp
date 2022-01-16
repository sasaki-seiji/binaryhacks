// c++-bad2.cpp
#include <boost/thread/recursive_mutex.hpp>
#include "c++-header.h"

namespace /* anonymous */ { boost::recursive_mutex m ; }
void need_to_sync(int no)
{
	boost::recursive_mutex::scoped_lock lk(m) ;
		do_something(no) ;
}

