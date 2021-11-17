//
// sample.cpp
//
extern "C" void dbg(int); // 誤った関数プロトタイプ
int main() {
	dbg(1);
	return 0;
}
