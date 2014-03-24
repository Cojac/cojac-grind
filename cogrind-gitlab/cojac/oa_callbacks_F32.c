
/*--------------------------------------------------------------------*/
/*--- Cojac-grind numerical problem sniffer.      oa_callbacks_F32 ---*/
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


//--- F64 operations --- ----------------------------------------------------

//TODO: study "man math_error"...

static const float CANCELLATION_ULP_FACTOR_FLOAT=4.0f;

static float ulpf(float a) { //PRE: a is neither INF nor NaN
  return fabsf(nextafterf(a,INFINITY)-a);
}

//--- F32 operations --- ----------------------------------------------------

static void check_AddF32(Float a, Float b, OA_InstrumentContext inscon) {
  if (a==0.0f || b==0.0f) return;
  Float res=a+b;
  if (res==a || res==b) {
    OA_(maybe_error)(Err_Precision, inscon); return;
  }
  if (isinf(res) && !isinf(a) && !isinf(b)) {
    OA_(maybe_error)(Err_Infinity, inscon); return;
  }
  if (isnan(res) && !isnan(a) && !isnan(b)) {
    OA_(maybe_error)(Err_NaN, inscon); return;
  }
  if (isnan(res) || isinf(res) || res==0.0f) return;
  if(fabsf(res) <= CANCELLATION_ULP_FACTOR_FLOAT * ulpf(a)) {
    OA_(maybe_error)(Err_Cancellation, inscon); return;
  }
}

static void check_SubF32(Float a, Float b, OA_InstrumentContext inscon) {
  if (a==0.0f || b==0.0f) return;
  Float res=a-b;
  if (res == a || res==b) {
    OA_(maybe_error)(Err_Precision, inscon); return;
  }
  if (isinf(res) && !isinf(a) && !isinf(b)) {
    OA_(maybe_error)(Err_Infinity, inscon); return;
  }
  if (isnan(res) && !isnan(a) && !isnan(b)) {
    OA_(maybe_error)(Err_NaN, inscon); return;
  }
  if (isnan(res) || isinf(res) || res==0.0f) return;
  if(fabsf(res) <= CANCELLATION_ULP_FACTOR_FLOAT * ulpf(a)) {
    OA_(maybe_error)(Err_Cancellation, inscon); return;
  }
}

static void check_MulF32(Float a, Float b, OA_InstrumentContext inscon) {
  if (a==0.0f || b==0.0f) return;
  Float res=a*b;
  if (isinf(res) && !isinf(a) && !isinf(b)) {
    OA_(maybe_error)(Err_Infinity, inscon); return;
  }
  if (isnan(res) && !isnan(a) && !isnan(b)) {
    OA_(maybe_error)(Err_NaN, inscon); return;
  }
}

static void check_DivF32(Float a, Float b, OA_InstrumentContext inscon) {
  if (b==0.0f) {
    OA_(maybe_error)(Err_DivByZero, inscon); return;
  }
  Float res=a/b;
  if (isinf(res) && !isinf(a) && !isinf(b)) {
    OA_(maybe_error)(Err_Infinity, inscon); return;
  }
  if (isnan(res) && !isnan(a) && !isnan(b)) {
    OA_(maybe_error)(Err_NaN, inscon); return;
  }
}


/*--------------------------------------------------------------------*/
VG_REGPARM(3) void oa_callbackI32_2xF32(Int a, Int b, OA_InstrumentContext ic) {
  Float fa=OA_(floatFromInt)(a);
  Float fb=OA_(floatFromInt)(b);
  switch(ic->op) {
    case Iop_Add32F0x4:
    case Iop_AddF32:  check_AddF32(fa,fb,ic); break;
    case Iop_Sub32F0x4:
    case Iop_SubF32:  check_SubF32(fa,fb,ic); break;
    case Iop_Mul32F0x4:
    case Iop_MulF32:  check_MulF32(fa,fb,ic); break;
    case Iop_Div32F0x4:
    case Iop_DivF32:  check_DivF32(fa,fb,ic); break;
    default: break;
  }
}

VG_REGPARM(3) void oa_callbackI64_2xF32(ULong la, ULong lb, OA_InstrumentContext ic) {
  Int a, a1, b, b1;
  OA_(longToTwoInts)(la, &a, &a1);
  OA_(longToTwoInts)(lb, &b, &b1);
  oa_callbackI32_2xF32(a1, b1,ic);
}


/*--------------------------------------------------------------------*/
/*--- end                                                          ---*/
/*--------------------------------------------------------------------*/
