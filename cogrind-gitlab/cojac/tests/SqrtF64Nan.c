#include <x86intrin.h>

int main(int argc, char **argv){
  __v2df d = {-25.0};
  __v2df a = _mm_sqrt_pd(d);
}
