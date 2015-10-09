
#include <limits.h>

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <float.h>
#include <math.h>
#include <inttypes.h>

int main00(int argc, char *argv[]) {
	int size=atoi(argv[1]);
	size_t sizeBytes=((size_t)size)*1024*1024;
	printf("sizeof(size_t):  %ld \n", sizeof(size_t));
	printf("trying to allocate %d Mb\n", size);
	printf("trying to allocate %zd bytes\n", sizeBytes);
	printf("trying to allocate %zd Mb\n", sizeBytes/1024/1024);
	char *a=(char*)malloc(sizeBytes);
	if (a==0)
		printf("FAILED\n");
	else {
		printf("DONE\n");
		memset(a, 'a', sizeBytes);
		*(a+sizeBytes-1)='b';
		printf("WRITTEN\n");
		printf("read %c %c\n", *a, *(a+sizeBytes-1));
		free(a);
		printf("FREED\n");
	}
	return 0;
}

/*
./vg-in-place --trace-flags=00100000 --trace-notbelow=0 --tool=cojac ../HelloCojac/Debug/HelloCojac 2>a.txt
./vg-in-place --tool=cojac ../HelloCojac/Debug/HelloCojac

 */

