#include <stdio.h>
#include <float.h>

int main(int argc, char **argv){
  double d = 1 + DBL_EPSILON;
  double a = -1.0;
  double c = a + d;
}
