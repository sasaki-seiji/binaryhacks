//
// sample_qsort.cpp
//
#include <cstdlib>
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
		return 1;
	}
	return 0;
}
