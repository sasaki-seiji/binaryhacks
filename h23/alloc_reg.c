#include <stdio.h>

int main()
{
	int local = 0;
	register void *stack_pointer asm ("%rsp");
	register void *frame_pointer asm ("%rbp");

	printf("rsp:%p, rbp:%p, &local:%p\n", 
			stack_pointer, frame_pointer, &local);
}
