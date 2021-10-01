#define _GNU_SOURCE
#include <dlfcn.h>
#include <link.h>
#include <stdlib.h>
#include <stdio.h>

/*
// converts a function's address in memory to its VMA address in the executable file. VMA is what addr2line expects
*/
size_t ConvertToVMA(size_t addr)
{
  Dl_info info;
  struct link_map* link_map;
  dladdr1((void*)addr,&info,(void**)&link_map,RTLD_DL_LINKMAP);
  return addr-link_map->l_addr;
}

void func() {
}

int main() {
	printf("%p\n", &func);
	printf("0x%lx\n", ConvertToVMA((size_t)&func));
	return 0;
}
