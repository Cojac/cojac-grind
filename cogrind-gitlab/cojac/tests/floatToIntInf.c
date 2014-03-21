#include <stdio.h>
#include <limits.h>
#include <float.h>


int	 domingues_function(){
	float a = 123.25 / 0;
	int b;
	b = a;
	return b;
}

int main(){
	domingues_function();
}
