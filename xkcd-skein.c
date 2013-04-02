#include <stdio.h>
#include "skein.h"

int main(int argc, char *argv[])
{
	unsigned int i;
	Skein1024_Ctxt_t ctx;
	u08b_t hash[128];

	if (argc != 2) {
		printf("Usage: xkcd-skein: <string>\n");
		return 1;
	}

	Skein1024_Init(&ctx, 1024);
	Skein1024_Update(&ctx, argv[1], 32);
	Skein1024_Final(&ctx, hash);          

	for (i = 0; i < 128; i++) {
		printf("%02x", hash[i]);
	}

	printf("\n");                                                               

	return 0;
}
