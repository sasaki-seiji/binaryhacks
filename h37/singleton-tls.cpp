// singleton-tls.cpp
#include "singleton-tls.h"


Singleton* Singleton::instance_ = NULL ;
int Singleton::count_ = 0;
static_mutex Singleton::m_ = STATIC_MUTEX_INIT;

Singleton::Singleton() 
{ 
	__atomic_add_fetch(&count_, 1, __ATOMIC_SEQ_CST);
}

Singleton *Singleton::instance() {
	static __thread Singleton *tls_instance = 0;
	if(!tls_instance) tls_instance = do_instance();
	return tls_instance;
}

Singleton *Singleton::do_instance() {
	static_mutex::scoped_lock lk(m_);
	if(instance_ == NULL) instance_ = new Singleton;
	return instance_;
}
