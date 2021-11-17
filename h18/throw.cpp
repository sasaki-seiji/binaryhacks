#include <iostream>
using namespace std;

extern "C" {
	int cpp_func(int i) {
		if (i % 2 == 1) throw -1;
		cout << "arg: " << i << endl;
		return 0; // success
	}
}
