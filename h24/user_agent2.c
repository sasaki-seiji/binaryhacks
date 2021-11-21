#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "user_agent.h"
//
// User-Agentヘッダを作成する
//
static const char *USER_AGENT_HDR_NAME = "User-Agent: ";
char *get_user_agent_hdr(const char *hdr_value) {
	assert(hdr_value != NULL);
	const size_t name_len = strlen(USER_AGENT_HDR_NAME);
	const size_t value_len = strlen(hdr_value);
	char *hdr = malloc(sizeof(char) * (name_len + value_len + 1));
		// 整数オーバーフローのチェックは略
	if (hdr)
		sprintf(hdr, "%s%s", USER_AGENT_HDR_NAME, hdr_value);
	return hdr;
}
