#include <stdio.h>

int main()
{
	static int labels[] = { 
		&&label0 - &&label0, &&label1 - &&label0, 
		&&label2 - &&label0, &&label3 - &&label0
	};
	int i;
	
	i = 2;
	goto *(&&label0 + labels[i]);
	
label0:
	printf("enter label0\n");
	return 0;
label1:
	printf("enter label1\n");
	return 0;
label2:
	printf("enter label2\n");
	return 0;
label3:
	printf("enter label3\n");
	return 0;
}

