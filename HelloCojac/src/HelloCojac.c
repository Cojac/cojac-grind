/*
 ============================================================================
 Name        : HelloCojac.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <limits.h>

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <float.h>
#include <math.h>
#include <inttypes.h>

//*--------------------------------------------------------------------*/
typedef double Double;
typedef float  Float;
typedef uint64_t ULong;
typedef  int64_t  Long;
typedef uint32_t UInt;
typedef  int32_t  Int;
typedef uint16_t UShort;
typedef  int16_t  Short;
typedef unsigned char UChar;
typedef   signed char  Char;


typedef union {
  UChar u;
  Char  s;
} mix8_t;

typedef union {
  UShort u;
  Short  s;
  struct {
    mix8_t h2;
    mix8_t h1;
  } halves;
} mix16_t;

typedef union {
  UInt  u;
  Int   s;
  Float f;
  struct {
    mix16_t h2;
    mix16_t h1;
  } halves;
} mix32_t;

typedef union {
  ULong   u;
  Long    s;
  Double  f;
  struct {
    mix32_t h2;
    mix32_t h1;
  } halves;
} mix64_t;



//------------- 64 <--> 64
static ULong longFromDouble(Double d) {
  mix64_t m; m.f=d; return m.u;
}
static double doubleFromLong(ULong l) {
  mix64_t m; m.u=l; return m.f;
}
//------------- 32 <--> 32
static UInt uintFromInt(Int s) {
  mix32_t m; m.s=s; return m.u;
}
static Int intFromUInt(UInt u) {
  mix32_t m; m.u=u; return m.s;
}
static Float floatFromInt(Int i) {
  mix32_t m; m.s=i; return m.f;
}
//------------- 32 <--> 64
static ULong longFromTwoUInts(UInt a, UInt b) {
  ULong c= a;
  c = (c<<32) | b;
  return c;
}
static ULong longFromTwoUInts_New(UInt a, UInt b) {
  mix64_t m; m.halves.h1.u=a; m.halves.h2.u=b;
  return m.u;
}

static ULong longFromTwoInts(Int a, Int b) {
  return longFromTwoUInts(uintFromInt(a), uintFromInt(b));
}
static void longToTwoUInts(ULong d, UInt *a, UInt *b) {
  *b = d;
  *a = d>>32;
}
static void longToTwoUInts_New(ULong d, UInt *a, UInt *b) {
  mix64_t m; m.u=d;
  *a = m.halves.h1.u;
  *b = m.halves.h2.u;
}

static void longToTwoInts(ULong d, Int *a, Int *b) {
  UInt ua, ub;
  longToTwoUInts(d, &ua, &ub);
  *a=intFromUInt(ua);
  *b=intFromUInt(ub);
}
static double doubleFromTwoUInts(UInt a, UInt b) {
  ULong c= longFromTwoUInts(a,b);
  return doubleFromLong(c);
}
static double doubleFromTwoInts(Int a, Int b) {
  return doubleFromTwoUInts(uintFromInt(a), uintFromInt(b));
}
static void doubleToTwoUInts(double d, UInt *a, UInt *b) {
  longToTwoUInts(longFromDouble(d), a, b);
}
static void doubleToTwoInts(double d, Int *a, Int *b) {
  UInt ua, ub;
  doubleToTwoUInts(d, &ua, &ub);
  *a=intFromUInt(ua);
  *b=intFromUInt(ub);
}

//------------- 32 <--> 16
Short shortFromInt(Int i) {
  mix32_t m; m.s=i; return m.halves.h1.s;
}







//------------------------------------------------
static int glob=85;
static signed int   add32(signed int   a, signed int   b) {
  //printf("add32 %d + %d \n", a, b);
  return a+b;
}
static unsigned int   addU32(unsigned int   a, unsigned int   b) {
  //printf("addU32 %u + %u \n", a, b);
  return a+b;
}
static signed short add16(signed short a, signed short b) {return a+b;}
static signed short cast32to16(signed int a)              {return (signed short)(a); }
static int64_t add64(int64_t a, int64_t b) {
  printf("add64 %"PRId64 " + %"PRId64" \n", a, b);
  return a+b;
}
static uint64_t addU64(uint64_t a, uint64_t b) {
  printf("addU64 %"PRIu64 " + %"PRIu64 " \n", a, b);
  return a+b;
}
static float addFloat(float a, float b) {int res=a+b+0x7775; return res;}
static double addDouble(double a, double b) {
//  printf("addDouble %f + %f (%llu + %llu)", a, b, longFromDouble(a), longFromDouble(b));
//  uint32_t u1, u2;
//  doubleToTwoUInts(a, &u1, &u2);
//  printf(" %u/%u ", u1, u2);
//  doubleToTwoUInts(b, &u1, &u2);
//  printf("+ %u/%u \n", u1, u2);

  return a+b;
}

static double playWithDoubles(double a) {
  double res=a; //+(glob-0x7774);
  int i=0;
  for (i=0; i<4; i++) {
    res = addDouble(res, a*a);
  }
  return res;
}
static double playWithFloats(float a) {
  float res=a; //+(glob-0x7773);
  int i=0;
  for (i=0; i<4; i++) {
    res = res + a*a;
  }
  return res;
}

static int64_t playWithLongs(int64_t a) {
  int64_t res=a+(glob-0x7773);
  int i=0;
  for (i=0; i<100; i++) {
    res = res + a*a;
  }
  return res;
}

//*--------------------------------------------------------------------*/
//------------------------------------------------
static void testLongFromUints() {
  uint64_t l =432412345678L;
  uint32_t ua, ub;
  longToTwoUInts(l, &ua, &ub);
  uint64_t r1=longFromTwoUInts(ua,ub);
  if (r1!=l)
    printf("Error: %"PRId64 " , should be %"PRId64 "  %d / %d\n", r1,l, ua, ub);
}
static void testDoubleFromUint() {
  double d = 3.14E51; // d2=-845.009;
  uint32_t ua, ub;
  int32_t a, b;
  doubleToTwoInts(d, &a, &b);
  doubleToTwoUInts(d, &ua, &ub);
  double r1=doubleFromTwoInts(a,b);
  double r2=doubleFromTwoUInts(ua, ub);
  if (r1!=d)
    printf("Error1: %f , should be %f  %d / %d\n", r1, d, a, b);
  if (r2!=d)
    printf("Error2: %f , should be %f  %d / %d\n", r2, d, ua, ub);

  a=-8730;
  ub = a;
  if (intFromUInt(uintFromInt(a) != a))
    printf("Error3:\n");
  if (uintFromInt(intFromUInt(ub) != ub))
    printf("Error4:\n");

}
//------------------------------------------------
int main1(void) {
  //fprintf(stderr, "achachachach\n");
  signed int res=119*119*119;
  int i=0;
  char b=5;

  for(i=0; i<5; i++) {
    res = res*119;
    res = res + res +res;
    //fprintf(stderr, "res=%d\n", res);
    //fflush(stderr);
  }
  res = b*res;
  signed int inc = INT_MAX/3;
  for(i=0; i<20; i++)
    res = res + inc;

  res = add16(SHRT_MAX-8, 145);
  signed short res2 = cast32to16(0x78787);
  printf("res2= %d", res2);

  int32_t ia=INT_MAX-4; int32_t ib=8; ib = add32(ia, ib);
  int64_t lla=LLONG_MAX-4; int64_t llb=8; llb = add64(lla, llb);
  float fla=FLT_MAX; float flb=FLT_MAX; flb = addFloat(fla, flb);

  if(isnan(fla)) fla=0;

  printf("float: %f \n", playWithFloats(2.0f));
  printf("double: %f \n", playWithDoubles(2.0));
  printf("double: %f \n", playWithDoubles(3.16));
  printf("long: %"PRId64 " \n", playWithLongs(2));

  return EXIT_SUCCESS;
}

//------------------------------------------------
static double ulp(double a) { //PRE: a is neither INF nor NaN
  return fabs(nextafter(a,INFINITY)-a);
}
static double ulpf(float a) { //PRE: a is neither INF nor NaN
  return fabsf(nextafterf(a,INFINITY)-a);
}
//------------------------------------------------

static void susp_comp_double() {
  double large=1.2E45, small=2.3E-44, max=DBL_MAX, inf=INFINITY, nan=NAN, zero=0.0;
  double d= 0.0;
  d=large+small;
  d=max+max;
  d=large-small;
  d=inf/inf;
  d=large/zero;
  d=small/zero;
  d=zero/zero;
  d=large + (-large+ulp(large));
  d=large;
  d=3.25; //printf("line %d: ulp(%f)=%f\n", __LINE__, d, ulp(d));
}

static void susp_comp_float() {
  Float large=1.2E45, small=2.3E-44, max=FLT_MAX, inf=INFINITY, nan=NAN, zero=0.0;
  Float d= 0.0;
  d=large+small;
  d=max+max;
  d=large-small;
  d=inf/inf;
  d=large/zero;
  d=small/zero;
  d=zero/zero;
  d=large + (-large+ulpf(large));
  d=large;
  d=3.25;
}

static void susp_comp_int() {
  int32_t imax=INT_MAX, imin=INT_MIN, minusOne=-1;
  int i=0;
  i=imax+imax; //i=add32(imax,imax);
  i=imax*imax;
  i=-imin;
  i=imin*minusOne;
  // printf("ah %d / %d = %d \n", imin, minusOne, imin/minusOne);
  //i=imin / minusOne;
  i=imax-imin;
}

static void susp_comp_Long() {
  Long imax=LONG_MAX, imin=LONG_MIN, minusOne=-1L;
  Long i=0;
  i=imax+imax;
  i=imax*imax;
  i=-imin;
  i=imin*minusOne;
  i=imax-imin;
}

static void susp_comp_short() {
  // short
  int16_t smax=SHRT_MAX, smin=SHRT_MIN;
  int s=0;
  s=add16(smax, smax); //smax+smax; //i=add32(imax,imax);
  s=smax*smax;
  s=smin / -1;
  s=smax-smin;
}

static void suspecious_computations() {
	susp_comp_double();
	susp_comp_float();
	susp_comp_int();
	susp_comp_Long();
	susp_comp_short();
}
//------------------------------------------------

static void norm_comp_double() {
  double large=1.2E45, small=2.3E-44, max=DBL_MAX, inf=INFINITY, nan=NAN, zero=0.0, pi=3.14;
  double d= 0.0;

  double thirtyeight=38.0, seventythree=73.0;
  d=thirtyeight * seventythree;
  d=thirtyeight - seventythree;
  d=thirtyeight + seventythree;
  d=thirtyeight / seventythree;

  d= large+large;
  d= small+small;
  d= max-max;
  d= max/max;
  d= pi*pi;
}

static void norm_comp_float() {
  float largef=1.2E15, smallf=2.3E-14, maxf=FLT_MAX, inff=INFINITY, nanf=NAN, zerof=0.0, pif=3.14;
  float f= 0.0;
  f= largef+largef;//printf("line %d: %f\n", __LINE__, f);
  f= smallf+smallf;
  f= maxf-maxf;
  f= maxf/maxf;
  f= pif*pif;
}

static void norm_comp_int() {
  // signed
  int32_t si=3, sj=5, sr=0;
  sr=si*sj;
  sr=si+sj;
  sr=si-sj;
  sr=si/sj;
  sr=si%sj;

  // unsigned
  uint32_t ui=3, uj=5, ur=0;
  ur=ui*uj;
  ur=ui+uj;
  ur=ui-uj;
  ur=ui/uj;
  ur=ui%uj;
}

static void norm_comp_long() {
  // signed
  int64_t si=3L, sj=5L, sr=0L;
  sr=si*sj;
  sr=si+sj;
  sr=si-sj;
  sr=si/sj;
  sr=si%sj;

  // unsigned
  uint64_t ui=3L, uj=5L, ur=0L;
  ur=ui*uj;
  ur=ui+uj;
  ur=ui-uj;
  ur=ui/uj;
  ur=ui%uj;

}
static void norm_comp_short() {
  // signed
  int16_t sis=3, sjs=5, srs=0;
  srs=sis*sjs;
  srs=sis+sjs;
  srs=sis-sjs;
  srs=sis/sjs;
  srs=sis%sjs;

  // unsigned
  uint16_t uis=3, ujs=5, urs=0;
  urs=uis*ujs;
  urs=uis+ujs;
  urs=uis-ujs;
  urs=uis/ujs;
  urs=uis%ujs;
}


static void normal_computations() {
  norm_comp_double();
  norm_comp_float();
  norm_comp_int();
  norm_comp_long();
  norm_comp_short();
}

//------------------------------------------------

int main() {
  suspecious_computations();
  normal_computations();
  return 0;
}

/*
./vg-in-place --trace-flags=00100000 --trace-notbelow=0 --tool=cojac ../HelloCojac/Debug/HelloCojac 2>a.txt
./vg-in-place --tool=cojac ../HelloCojac/Debug/HelloCojac

 */

