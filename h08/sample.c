#include <stdio.h>

void show_message(const char* mes)
{
	printf("%s\n", mes);
}

const char message[] = "hello, wolrd";

int main()
{
	int i;
	for (i = 0; i < 5; i++) {
		show_message(message);
	}
	return 0;
}
