// baz.c
#include <stdio.h>

int main(int argc, char **argv)
{
	if(argc != 2) {
		fprintf(stderr, "usage: %s <format>\n", argv[0]) ;
		return 1 ;
	}
	int a;
	printf(argv[1]);	// argv[1]に%nが含まれているとabortする
	printf("%n", &a);	// 特例：文字列リテラルに%nが含まれるのは問題ない
	return 0 ;
} 
