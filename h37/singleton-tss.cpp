// singleton-tss.cpp
#include "singleton-tss.h"


int Singleton::count_ = 0;
Singleton::Singleton() 
{ 
	__atomic_add_fetch(&count_, 1, __ATOMIC_SEQ_CST);
}

Singleton *Singleton::instance() {
	static Singleton instance_;
	return &instance_ ;
}


