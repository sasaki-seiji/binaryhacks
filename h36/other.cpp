extern void need_to_sync();

struct X 
{
	X() { ::need_to_sync(); }
};

X x;
