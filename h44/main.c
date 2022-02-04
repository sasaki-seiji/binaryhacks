//main.c
#include <stdio.h>
#include <stdlib.h>

void hoge(void)
{
        int *a_buff = (int *)malloc(5 * sizeof(int));
        a_buff[10] = 8;
}

int main(void)
{
        printf("test\n");
        hoge();
        return 0;
}
