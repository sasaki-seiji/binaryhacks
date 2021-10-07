#include <iostream>
class Foo {
public:
	Foo(int x);
private:
	int x_;
};

Foo::Foo(int x) : x_(x * x) {}

