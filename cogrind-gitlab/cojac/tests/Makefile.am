include $(top_srcdir)/Makefile.tool-tests.am

dist_noinst_SCRIPTS = filter_stderr

SUBDIRS = .

EXTRA_DIST = Add32Overflow.stderr.exp Add32Overflow.vgtest true.stderr.exp true.vgtest \
              Div32Under.stderr.exp Div32Under.vgtest \
              Div64Under.stderr.exp Div64Under.vgtest \
              CmpF64.stderr.exp CmpF64.vgest \
              CmpF64Pre.stderr.exp CmpF64Pre.vgest \
              Mul32Under.stderr.exp Mul32Under.vgtest \
              Mul64Under.stderr.exp Mul64Under.vgtest \
			        F64toI32S.stderr.exp F64toI32S.vgtest \
              F64toI32SInf.stderr.exp F64toI32SInf.vgtest \
              F64toI32SNaN.stderr.exp F64toI32SNaN.vgtest \
              F64toI32SOverflow.stderr.exp F64toI32SOverflow.vgtest \
              F64toI32SOverflowNeg.stderr.exp F64toI32SOverflowNeg.vgtest \
              F64toI64S.stderr.exp F64toI64S.vgtest \
              F64toI64SInf.stderr.exp F64toI64SInf.vgtest \
              F64toI64SNaN.stderr.exp F64toI64SNaN.vgtest \
              F64toI64SOverflow.stderr.exp F64toI64SOverflow.vgtest \
              F64toI64SOverflowNeg.stderr.exp F64toI64SOverflowNeg.vgtest

check_PROGRAMS = Add32Overflow \
                  Div32Under \
                  Div64Under \
                  CmpF64 \
                  CmpF64Pre \
                  Mul32Under \
                  Mul64Under \
                  F64toI32S \
                  F64toI32SInf \
                  F64toI32SNaN \
                  F64toI32SOverflow \
                  F64toI32SOverflowNeg \
                  F64toI64S \
                  F64toI64SInf \
                  F64toI64SNaN \
                  F64toI64SOverflow \
                  F64toI64SOverflowNeg
