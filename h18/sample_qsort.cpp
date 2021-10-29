//
// sample_qsort.cpp
//
#include <cstdlib>
#include <iostream>
using namespace std;

// qsortの比較関数
int compar(const void *,  const void *) {
	throw -1;
}

int main(){
	int array[] = {3, 2, 1};
	try {
		qsort(array, 3, sizeof(int), compar);
	} catch(...) {
		cout << "caught exception from qsort()" << endl;
		return 1;
	}
	return 0;
}
