#include <stdio.h>

int array[1024];
float f1 = 1.2F;
float f2;
static float f3;

void cabin(int param)
{
	printf("cabin : %d\n", param);
	
	if (param > 0)
		printf("positive\n");
	else if (param < 0)
		printf("negative\n");
	else
		printf("zero\n");

}

int main()
{
	cabin(123);
}
