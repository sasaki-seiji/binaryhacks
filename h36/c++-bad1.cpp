// c++-bad1.cpp
#include <boost/thread/recursive_mutex.hpp>
#include "c++-header.h"

void need_to_sync(int no)
{
	static boost::recursive_mutex m ;
	boost::recursive_mutex::scoped_lock lk(m) ;
		do_something(no) ;
}

