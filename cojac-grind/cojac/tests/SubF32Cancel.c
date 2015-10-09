#include <stdio.h>
#include <float.h>

int main(int argc, char **argv){
  float d = 1 + FLT_EPSILON;
  float a = 1.0;
  float c = a - d;
}
