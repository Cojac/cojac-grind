
/*--------------------------------------------------------------------*/
/*--- Cojac-grind numerical problem sniffer.          oa_include.h ---*/
/* This is a private header file for use only in the cojac/ folder.   */
/*--------------------------------------------------------------------*/

/*
   This file is part of Cojac-grind, which watches arithmetic operations to
   detect overflows, cancellation, smearing, and other suspicious phenomena.

   Copyright (C) 2011-2014 Frederic Bapst & Luis Domingues
      frederic.bapst@gmail.com, domigues.luis@gmail.com

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


#ifndef __OA_INCLUDE_H
#define __OA_INCLUDE_H

#include "pub_tool_basics.h"
#include "pub_tool_tooliface.h"

#define OA_(str)    VGAPPEND(vgCojac_,str)

typedef enum {
	Err_Overflow,
	Err_Cast,
	Err_Cancellation,
	Err_NaN,
	Err_Infinity,
	Err_Precision,
	Err_Math,
	Err_DivByZero,
	Err_Underflow,
	Err_CloseComparison
} OA_ErrorTag;

/* Function calls to be instrumented.
The instrumentation is done by watching for "bad" inputs.
See man page of each function to understand how it works.*/
typedef enum {
  IsCall,
  IsIROp
} OA_ICType;

/* Function calls to be instrumented.
The instrumentation is done by watching for "bad" inputs.
See man page of each function to understand how it works.*/
typedef enum {
  Call_INVALID,
  Call_Sqrt,
  Call_Sqrtf,
  Call_Asin,
  Call_Asinf,
  Call_Log,
  Call_Logf,
  Call_Last // Must remain the last.
} OA_Call;

/* Type of parameters for the instrumented functions. Need to know to call the good instrumentation function.*/
typedef enum {
  Call_1xF32,
  Call_1xF64
} OA_Param_Type;


#define COJAC_FILE_LEN  1024
#define COJAC_FCT_LEN   50

typedef struct {
	Addr  addr;
	OA_ICType type;
	IROp  op;
	OA_Call call;
	Bool  isLocated;
	HChar* string;
} OA_InstrumentContext_;

typedef OA_InstrumentContext_*  OA_InstrumentContext;

typedef struct {
  Int  stacktraceDepth;
  Int  stacktraceCallDepth;
  Bool isAggr;
  Bool i32;
  Bool f32;
  Bool f64;
  Bool i16;
  Bool i64;
  Bool mathOp;
  Bool castToI16;
  Bool castFromF64;
  Double Ulp_factor_f64;
  Double Ulp_factor_f32;
} cojacOptions;

typedef struct {
  Int tid;
  OA_ICType type;
} cojacErrorExtra_;

typedef cojacErrorExtra_* cojacErrorExtra;

typedef struct {
  IROp op;
  const HChar* name;
  void*       callbackI32;  // for x86   arch
  void*       callbackI64;  // for amd64 arch
  Long        occurrences;
} Iop_Cojac_attributes;

typedef struct {
  OA_Call call;
  const HChar* name;
  void*       callbackI32;  // for x86   arch
  void*       callbackI64;  // for amd64 arch
  Long        occurrences;
  OA_Param_Type paramType;
} Call_Cojac_attributes;


typedef struct {
	Int a;
	Int b;
	ThreadId tid;
} partOfF64op;

//-----------------------------------------------------------------
extern cojacOptions OA_(options);
//-----------------------------------------------------------------

Iop_Cojac_attributes* OA_(get_Iop_struct)(IROp op);


//-----------------------------------------------------------------
/* called from the instrumented code, just before the operation.
 * There are constraints, not always well-documented, for such "dirty calls":
 * - corresponding IExpr effective param must be "flat" (no nested subexpr)
 * - for x86:   only I32 params, maximum 3 params
 * - for amd64: only I64 params, max 5-6 params
 */
 //x86
VG_REGPARM(3) void oa_callbackI32_2x32 ( Int a,  Int b, OA_InstrumentContext c);
VG_REGPARM(2) void oa_callbackI32_1x32 ( Int a,         OA_InstrumentContext c);
VG_REGPARM(3) void oa_callbackI32_2x16 ( Int a,  Int b, OA_InstrumentContext c);
VG_REGPARM(3) void oa_callbackI32_2x64 (UInt a, UInt b, OA_InstrumentContext c);
VG_REGPARM(2) void oa_callbackI32_1x64 (UInt a,         OA_InstrumentContext c);

VG_REGPARM(3) void oa_callbackI32_2xF32(UInt a, UInt b, OA_InstrumentContext ic);
VG_REGPARM(4) void oa_callbackI32_2xF64(UInt a, UInt b, OA_InstrumentContext ic);
VG_REGPARM(3) void oa_callbackI32_1xI32_1xF64(UInt roundingMode, UInt la, OA_InstrumentContext ic);
VG_REGPARM(2) void oa_callbackI32_1xF64(UInt a, OA_InstrumentContext ic);
VG_REGPARM(2) void oa_callbackI32_call_1xF64(UInt a, OA_InstrumentContext ic);
VG_REGPARM(2) void oa_callbackI32_call_1xF32(UInt a, OA_InstrumentContext ic);

//amd64
VG_REGPARM(3) void oa_callbackI64_2x32 (ULong a, ULong b, OA_InstrumentContext c);
VG_REGPARM(2) void oa_callbackI64_1x32 (ULong a,          OA_InstrumentContext c);
VG_REGPARM(3) void oa_callbackI64_2x64 ( Long a,  Long b, OA_InstrumentContext c);
VG_REGPARM(2) void oa_callbackI64_1x64 ( Long a,          OA_InstrumentContext c);
VG_REGPARM(3) void oa_callbackI64_2x16 (ULong a, ULong b, OA_InstrumentContext c);

VG_REGPARM(3) void oa_callbackI64_2xF32(ULong la, ULong lb, OA_InstrumentContext ic);
VG_REGPARM(4) void oa_callbackI64_3xF64(UInt roundingMode, ULong la, ULong lb, OA_InstrumentContext ic);
VG_REGPARM(3) void oa_callbackI64_1xI32_1xF64(UInt roundingMode, ULong la, OA_InstrumentContext ic);
VG_REGPARM(3) void oa_callbackI64_2xF64( ULong la, ULong lb, OA_InstrumentContext ic);
VG_REGPARM(2) void oa_callbackI64_1xF64(ULong la, OA_InstrumentContext ic);
VG_REGPARM(2) void oa_callbackI64_call_1xF64(ULong la, OA_InstrumentContext ic);
VG_REGPARM(2) void oa_callbackI64_call_1xF32(ULong la, OA_InstrumentContext ic);

/*------------------------------------------------------------*/
/*--- Errors and suppressions                              ---*/
/*------------------------------------------------------------*/

// For error signalling
void OA_(maybe_error)(ErrorKind ekind, OA_InstrumentContext inscon);

// As required for VG_(needs_tool_errors) (pub_tool_tooliface.h
Bool OA_(eq_Error)           ( VgRes res, Error* e1, Error* e2 );
void OA_(before_pp_Error)    ( Error* err );
void OA_(pp_Error)           ( Error* err );
UInt OA_(update_Error_extra) ( Error* err );
Bool OA_(is_recognised_suppression) ( const HChar* name, Supp* su );
Bool OA_(read_extra_suppression_info) ( Int fd, HChar** buf, SizeT* nBuf, Int* lineno, Supp *su );
Bool OA_(error_matches_suppression) ( Error* err, Supp* su );
Bool OA_(get_extra_suppression_info) ( Error* err, /*OUT*/HChar* buf, Int nBuf );
Bool OA_(get_extra_suppression_use) ( Error* err, /*OUT*/HChar* buf, Int nBuf );
void OA_(update_extra_suppression_use) (Error* err, Supp* su);
const HChar* OA_(get_error_name) ( Error* err );


#endif /* ndef __OA_INCLUDE_H */

/*--------------------------------------------------------------------*/
/*--- end                                                          ---*/
/*--------------------------------------------------------------------*/
