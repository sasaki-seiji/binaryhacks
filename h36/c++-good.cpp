// c++-good.cpp
#include "static_mutex.hpp"

extern void do_something() ;

namespace /* anonymous */ { static_mutex m = STATIC_MUTEX_INIT ; }
void need_to_sync()
{
	static_mutex::scoped_lock lk(m) ;
		do_something() ;
}

