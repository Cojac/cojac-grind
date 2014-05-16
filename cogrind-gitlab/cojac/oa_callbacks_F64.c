
/*--------------------------------------------------------------------*/
/*--- Cojac-grind numerical problem sniffer.      oa_callbacks_F64 ---*/
/*--------------------------------------------------------------------*/

/*
   This file is part of Cojac-grind, which watches arithmetic operations to
   detect overflows, cancellation, smearing, and other suspicious phenomena.

   Copyright (C) 2011-2011 Frederic Bapst
      frederic.bapst@gmail.com

   This program is free software; you can redistribute it and/or
   modify it under the terms of the GNU General Public License as
   published by the Free Software Foundation; either version 2 of the
   License, or (at your option) any later version.

   This program is distributed in the hope that it will be useful, but
   WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
   02111-1307, USA.

   The GNU General Public License is contained in the file COPYING.
 */


#include "oa_include.h"
#include "oa_utils.h"
#include "pub_tool_basics.h"
#include "pub_tool_tooliface.h"
#include "pub_tool_libcprint.h"
//#include "pub_tool_libcassert.h"
//#include "pub_tool_debuginfo.h"
#include "pub_tool_threadstate.h"
#include <limits.h>
#include <math.h>
#include <float.h>

/*--------------------------------------------------------------------*/
//--- F64 operations --- ----------------------------------------------------

//TODO: study deeper "man math_error"...

//static const double CANCELLATION_ULP_FACTOR_DOUBLE=4.0;

extern cojacOptions OA_(options);

static double ulp(double a) { //PRE: a is neither INF nor NaN
  return fabs(nextafter(a,INFINITY)-a);
}

static void check_AddF64(Double a, Double b, OA_InstrumentContext inscon) {
  // apparently, %f format is not available...
  //VG_(message)(Vg_UserMsg, "addF64: %llu + %llu %s\n",
  //    longFromDouble(a), longFromDouble(b), inscon->string);
  if (a==0.0 || b==0.0) return;
  Double res=a+b;
  if (res == a || res==b) {
    OA_(maybe_error)(Err_Precision, inscon); return;
  }
  if (isinf(res) && !isinf(a) && !isinf(b)) {
    OA_(maybe_error)(Err_Infinity, inscon); return;
  }
  if (isnan(res) && !isnan(a) && !isnan(b)) {
    OA_(maybe_error)(Err_NaN, inscon); return;
  }
  if (isnan(res) || isinf(res) || res==0.0) return;
  if(fabs(res) <= OA_(options).Ulp_factor_f64 * ulp(a)) {
    OA_(maybe_error)(Err_Cancellation, inscon); return;
  }
}

static void check_SubF64(Double a, Double b, OA_InstrumentContext inscon) {
  if (a==0.0 || b==0.0) return;
  Double res=a-b;
  if (res == a || res==b) {
    OA_(maybe_error)(Err_Precision, inscon); return;
  }
  if (isinf(res) && !isinf(a) && !isinf(b)) {
    OA_(maybe_error)(Err_Infinity, inscon); return;
  }
  if (isnan(res) && !isnan(a) && !isnan(b)) {
    OA_(maybe_error)(Err_NaN, inscon); return;
  }
  if (isnan(res) || isinf(res) || res==0.0) return;
  if(fabs(res) <= OA_(options).Ulp_factor_f64 * ulp(a)) {
    OA_(maybe_error)(Err_Cancellation, inscon); return;
  }
}

static void check_MulF64(Double a, Double b, OA_InstrumentContext inscon) {
  Double res=a*b;
  if (isinf(res) && !isinf(a) && !isinf(b)) {
    OA_(maybe_error)(Err_Infinity, inscon); return;
  }
  if (isnan(res) && !isnan(a) && !isnan(b)) {
    OA_(maybe_error)(Err_NaN, inscon); return;
  }
  if(a!=0.0 && b!=0.0 && res == 0.0) {
    OA_(maybe_error)(Err_Underflow, inscon); return;
  }
}

static void check_DivF64(Double a, Double b, OA_InstrumentContext inscon) {
  if (b==0.0) {
    OA_(maybe_error)(Err_DivByZero, inscon); return;
  }
  Double res=a/b;
  if (isinf(res) && !isinf(a) && !isinf(b)) {
    OA_(maybe_error)(Err_Infinity, inscon); return;
  }
  if (isnan(res) && !isnan(a) && !isnan(b)) {
    OA_(maybe_error)(Err_NaN, inscon); return;
  }
  if(a!=0.0 && b!=0.0 && res == 0.0) {
    OA_(maybe_error)(Err_Underflow, inscon); return;
  }
}

static void check_F64toI32S(Double a, OA_InstrumentContext inscon) {
  if (a > INT_MAX || a < INT_MIN){
    OA_(maybe_error)(Err_Overflow, inscon);
  }
  if (isinf(a)){
    OA_(maybe_error)(Err_Infinity, inscon); return;
  }
  if (isnan(a)){
    OA_(maybe_error)(Err_NaN, inscon); return;
  }
}

static void check_F64toI64S(Double a, OA_InstrumentContext inscon) {
  if (a > LONG_MAX || a < LONG_MIN){
    OA_(maybe_error)(Err_Overflow, inscon);
  }
  if (isinf(a)){
    OA_(maybe_error)(Err_Infinity, inscon); return;
  }
  if (isnan(a)){
    OA_(maybe_error)(Err_NaN, inscon); return;
  }
}

static void check_F64toF32(Double a, OA_InstrumentContext inscon) {
  if (a > FLT_MAX || a < -FLT_MAX){
    OA_(maybe_error)(Err_Overflow, inscon);
  }
  if(a < FLT_MIN){
    Float fa = a;
    if(fa == 0.0f && a != 0.0)
      OA_(maybe_error)(Err_Underflow, inscon);
  }
}

static void check_CmpF64(Double a, Double b, OA_InstrumentContext inscon){
  if(isinf(a) || isinf(b) || isnan(a) || isnan(b)){
    return;
  }
  Double res = a - b;
  if(res == 0){
    return;
  }
  if(fabs(res) <= OA_(options).Ulp_factor_f64 * ulp(a)) {
    OA_(maybe_error)(Err_CloseComparison, inscon); return;
  }
  if(fabs(res) <= OA_(options).Ulp_factor_f64 * ulp(b)) {
    OA_(maybe_error)(Err_CloseComparison, inscon); return;
  }
}

//Include a math library? Done by the glbic. See asin manpage.
static void check_F64_Asin(Double a, OA_InstrumentContext inscon) {
  //Double b = asin(a);  //Line to uncomment to see the link error.
  if (a < -1 || a > 1 || isinf(a)){
    OA_(maybe_error)(Err_NaN, inscon); return;
  }
}

static void check_F64_Sqrt(Double a, OA_InstrumentContext inscon) {
  if(isnan(a) || isinf(a)){
    return;
  }
  Double b;
  __asm__ ("sqrtsd %1, %0" : "=x" (b) : "x" (a));
  if (isnan(b)){
    OA_(maybe_error)(Err_NaN, inscon); return;
  }
}

/*--------------------------------------------------------------------*/

VG_REGPARM(2) void oa_callbackI64_call_1xF64(ULong la, OA_InstrumentContext ic) {
  Double value = OA_(doubleFromULong)(la);
  check_F64_Asin(value, ic);
}

VG_REGPARM(2) void oa_callbackI64_1xF64(ULong la, OA_InstrumentContext ic) {
  Double value = OA_(doubleFromULong)(la);
  switch(ic->op) {
    case Iop_Sqrt64Fx2: check_F64_Sqrt(value, ic); break;
	  default: break;
	}
}


VG_REGPARM(3) void oa_callbackI64_1xI32_1xF64(UInt roundingMode, ULong la, OA_InstrumentContext ic) {
  Double value = OA_(doubleFromULong)(la);
  switch(ic->op) {
    case Iop_F64toI32S: check_F64toI32S(value, ic); break;
    case Iop_F64toI64S: check_F64toI64S(value, ic); break;
    case Iop_F64toF32: check_F64toF32(value, ic); break;
	  default: break;
	}
}

VG_REGPARM(3) void oa_callbackI64_2xF64(ULong la, ULong lb, OA_InstrumentContext ic) {
  Double a=OA_(doubleFromULong)(la);
  Double b=OA_(doubleFromULong)(lb);
  /*
  switch(ic->op) {
    case Iop_Add64F0x2:
  	case Iop_Div64F0x2:
    case Iop_Sub64F0x2:
    case Iop_Mul64F0x2:
  		VG_(message)(Vg_UserMsg, "%s: %d %d\n", OA_(get_Iop_struct)(ic->op)->name, (int)a, (int)b);
  		break;
  	default: break;
  }
  */
  switch(ic->op) {
    case Iop_Add64F0x2:
    case Iop_Add64Fx2:
    case Iop_AddF64:  check_AddF64(a,b,ic); break;
    case Iop_Sub64F0x2:
    case Iop_Sub64Fx2:
    case Iop_SubF64:  check_SubF64(a,b,ic); break;
    case Iop_Mul64F0x2:
    case Iop_Mul64Fx2:
    case Iop_MulF64:  check_MulF64(a,b,ic); break;
    case Iop_Div64F0x2:
    case Iop_Div64Fx2:
    case Iop_DivF64: check_DivF64(a,b,ic); break;
    case Iop_SqrtF64: check_F64_Sqrt(b, ic); break;
    case Iop_CmpF64: check_CmpF64(a,b,ic); break;
    default: break;
  }
}


/* x86 platform only !
 * As only Int32 can be passed to the callback, the trick here is
 * to split the callback in 2 successive calls.
 * This horror is completely wrong when there are multiple threads!
 * TODO: consider threadId and manage one context per thread...
 * TODO: find a better way (pass pointers? ensure atomicity?...)
 */

static partOfF64op opF64_buf;
static char        isOpF64Part=False;

VG_REGPARM(1) void oa_callbackI32_1xF64(UInt la, OA_InstrumentContext ic){
  //TODO 32 Bits arch
}

VG_REGPARM(2) void oa_callbackI32_1xI32_1xF64(UInt roundingMode, UInt la, OA_InstrumentContext ic){
  //TODO 32 Bits arch
}

VG_REGPARM(3) void oa_callbackI32_2xF64(UInt a, UInt b, OA_InstrumentContext ic) {
  if (isOpF64Part) { // second half of the callback
  	isOpF64Part=False;
    ULong la=OA_(ulongFromTwoInts)(a, opF64_buf.a);
    ULong lb=OA_(ulongFromTwoInts)(b, opF64_buf.b);
    oa_callbackI64_2xF64(la, lb, ic);
  } else {            // first half of the callback
  	isOpF64Part=True;
    opF64_buf.a=a;
    opF64_buf.b=b;
    opF64_buf.tid=VG_(get_running_tid)();
  }
}


/*--------------------------------------------------------------------*/
/*--- end                                                          ---*/
/*--------------------------------------------------------------------*/
