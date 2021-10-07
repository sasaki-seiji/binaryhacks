#include <iostream>
namespace {

class Foo {
public:
	Foo(int x) : x_(x) {}
	void func() {
		std::cout << x_ << std::endl;
	}
private:
	int x_;
};

}

int main(){
	Foo foo(256);
	foo.func();
	return 0;
}
