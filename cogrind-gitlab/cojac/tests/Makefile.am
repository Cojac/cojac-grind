include $(top_srcdir)/Makefile.tool-tests.am

dist_noinst_SCRIPTS = filter_stderr

SUBDIRS = .

EXTRA_DIST = intAddOverflow.stderr.exp intAddOverflow.vgtest true.stderr.exp true.vgtest \
			  doubleToInt.stderr.exp doubleToInt.vgtest \
              doubleToIntInf.stderr.exp doubleToIntInf.vgtest \
              doubleToIntNaN.stderr.exp doubleToIntNaN.vgtest \
              doubleToIntOverflow.stderr.exp doubleToIntOverflow.vgtest \
              doubleToLong.stderr.exp doubleToLong.vgtest \
              doubleToLongInf.stderr.exp doubleToLongInf.vgtest \
              doubleToLongNaN.stderr.exp doubleToLongNaN.vgtest \
              doubleToLongOverflow.stderr.exp doubleToLongOverflow.vgtest

check_PROGRAMS = intAddOverflow \
                  doubleToInt \
                  doubleToIntInf \
                  doubleToIntNaN \
                  doubleToIntOverflow \
                  doubleToLong \
                  doubleToLongInf \
                  doubleToLongNaN \
                  doubleToLongOverflow
