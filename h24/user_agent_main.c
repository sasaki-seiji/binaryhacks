#include <stdio.h>
#include "user_agent.h"
int main() {
	char *hdr = get_user_agent_hdr("sample");
	printf("%s\n", hdr);
}
