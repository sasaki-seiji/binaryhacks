// c++-good.cpp
#include "static_mutex.hpp"
#include "c++-header.h"

namespace /* anonymous */ { static_mutex m = STATIC_MUTEX_INIT ; }
void need_to_sync(int no)
{
	static_mutex::scoped_lock lk(m) ;
		do_something(no) ;
}

