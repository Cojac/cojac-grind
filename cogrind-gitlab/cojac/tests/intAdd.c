#include <limits.h>

#include <stdio.h>
#include <stdlib.h>

int main (void){
	int a;
	int b;
	int c;
	a = INT_MAX;
	b = 1;
	c = a + b;
	printf("int: %d\n", c);
	return 0;
}