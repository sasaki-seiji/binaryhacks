#include "c++-header.h"

struct X 
{
	X() { ::need_to_sync(0); }
};

X x;
