#include "c++-header.h"

struct X 
{
	X(int no) { ::need_to_sync(no); }
};

X x1(1);
static X x2(2);
namespace { X x3(3); }
