// singleton-nolock.cpp
#include "singleton-nolock.h"


Singleton* Singleton::instance_ = NULL ;
int Singleton::count_ = 0;
Singleton::Singleton() 
{ 
	__atomic_add_fetch(&count_, 1, __ATOMIC_SEQ_CST);
}

Singleton *Singleton::instance() {
	if(instance_ == NULL) instance_ = new Singleton ;
	return instance_ ;
}


