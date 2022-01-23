// singleton-dcl.cpp
#include "singleton-dcl.h"


Singleton* Singleton::instance_ = NULL ;
int Singleton::count_ = 0;
static_mutex Singleton::m_ = STATIC_MUTEX_INIT;

Singleton::Singleton() 
{ 
	__atomic_add_fetch(&count_, 1, __ATOMIC_SEQ_CST);
}

Singleton *Singleton::instance() {
	if(instance_ == NULL) {
		static_mutex::scoped_lock lk(m_);
		if(instance_ == NULL) instance_ = new Singleton ;
	}
	return instance_ ;
}


