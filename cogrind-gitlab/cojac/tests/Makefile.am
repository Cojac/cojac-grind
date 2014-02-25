include $(top_srcdir)/Makefile.tool-tests.am

dist_noinst_SCRIPTS = filter_stderr

SUBDIRS = .

EXTRA_DIST = intAdd.stderr.exp intAdd.vgtest

check_PROGRAMS = intAdd


if DWARF4
check_PROGRAMS += dw4
endif

if HAVE_GNU_STPNCPY
check_PROGRAMS += stpncpy
endif

if HAVE_PTHREAD_SETNAME_NP
check_PROGRAMS += threadname 
endif

if HAVE_PTHREAD_BARRIER
check_PROGRAMS += reach_thread_register
endif

if HAVE_GSTABS
check_PROGRAMS += deep_templates
endif

AM_CFLAGS   += $(AM_FLAG_M3264_PRI)
AM_CXXFLAGS += $(AM_FLAG_M3264_PRI)

if VGCONF_PLATFORMS_INCLUDE_ARM_LINUX
#AM_CFLAGS   += -mfloat-abi=softfp
#AM_CXXFLAGS += -mfloat-abi=softfp
endif

if VGCONF_OS_IS_DARWIN
atomic_incs_CFLAGS = $(AM_CFLAGS) -mdynamic-no-pic
else
atomic_incs_CFLAGS = $(AM_CFLAGS)
endif

leak_cpp_interior_SOURCES	= leak_cpp_interior.cpp

deep_templates_SOURCES	= deep_templates.cpp
deep_templates_CXXFLAGS	= $(AM_CFLAGS) -O -gstabs

dw4_CFLAGS		= $(AM_CFLAGS) -gdwarf-4 -fdebug-types-section

err_disable3_LDADD 	= -lpthread
err_disable4_LDADD 	= -lpthread
reach_thread_register_CFLAGS	= $(AM_CFLAGS) -O2
reach_thread_register_LDADD     = -lpthread
thread_alloca_LDADD     = -lpthread
threadname_LDADD 	= -lpthread

error_counts_CFLAGS = $(AM_CFLAGS) @FLAG_W_NO_UNINITIALIZED@

execve1_CFLAGS = $(AM_CFLAGS) @FLAG_W_NO_NONNULL@

execve2_CFLAGS = $(AM_CFLAGS) @FLAG_W_NO_NONNULL@

fprw_CFLAGS = $(AM_CFLAGS) @FLAG_W_NO_UNINITIALIZED@

inits_CFLAGS = $(AM_CFLAGS) @FLAG_W_NO_UNINITIALIZED@

long_namespace_xml_SOURCES = long_namespace_xml.cpp

manuel1_CFLAGS = $(AM_CFLAGS) @FLAG_W_NO_UNINITIALIZED@

memcmptest_CFLAGS	= $(AM_CFLAGS) -fno-builtin-memcmp

mismatches_SOURCES	= mismatches.cpp

new_nothrow_SOURCES 	= new_nothrow.cpp
new_override_SOURCES 	= new_override.cpp

origin1_yes_CFLAGS      = $(AM_CFLAGS) @FLAG_W_NO_UNINITIALIZED@

origin2_not_quite_CFLAGS = $(AM_CFLAGS) @FLAG_W_NO_UNINITIALIZED@

origin3_no_CFLAGS = $(AM_CFLAGS) @FLAG_W_NO_UNINITIALIZED@

# This requires optimisation in order to get just one resulting error.
origin4_many_CFLAGS	= $(AM_CFLAGS) -O

# Apply -O so as to run in reasonable time.
origin5_bz2_CFLAGS	= $(AM_CFLAGS) -O -Wno-inline
origin6_fp_CFLAGS	= $(AM_CFLAGS) -O

# Don't allow GCC to inline memcpy() and strcpy(),
# because then we can't intercept it
overlap_CFLAGS		= $(AM_CFLAGS) -fno-builtin-memcpy -fno-builtin-strcpy

str_tester_CFLAGS	= $(AM_CFLAGS) -Wno-shadow

supp_CFLAGS             = $(AM_CFLAGS) @FLAG_W_NO_UNINITIALIZED@

supp_unknown_SOURCES	= badjump.c
supp_unknown_CFLAGS     = $(AM_CFLAGS) @FLAG_W_NO_UNINITIALIZED@

supp1_SOURCES		= supp.c
supp1_CFLAGS            = $(AM_CFLAGS) @FLAG_W_NO_UNINITIALIZED@

supp2_SOURCES		= supp.c
supp2_CFLAGS            = $(AM_CFLAGS) @FLAG_W_NO_UNINITIALIZED@

vcpu_bz2_CFLAGS		= $(AM_CFLAGS) -O2
vcpu_fbench_CFLAGS	= $(AM_CFLAGS) -O2
vcpu_fnfns_CFLAGS	= $(AM_CFLAGS) -O2
vcpu_fnfns_LDADD	= -lm
wrap6_CFLAGS		= $(AM_CFLAGS) -O2

# To make it a bit more realistic, have some optimisation enabled
# for the varinfo tests.  We still expect sane results.
varinfo1_CFLAGS		= $(AM_CFLAGS) -O
varinfo2_CFLAGS		= $(AM_CFLAGS) -O -Wno-shadow
varinfo3_CFLAGS		= $(AM_CFLAGS) -O
varinfo4_CFLAGS		= $(AM_CFLAGS) -O
varinfo5_CFLAGS		= $(AM_CFLAGS) -O
varinfo6_CFLAGS		= $(AM_CFLAGS) -O

# Build shared object for varinfo5
varinfo5_SOURCES        = varinfo5.c
varinfo5_DEPENDENCIES   = varinfo5so.so
if VGCONF_OS_IS_DARWIN
 varinfo5_LDADD         = `pwd`/varinfo5so.so
 varinfo5_LDFLAGS       = $(AM_FLAG_M3264_PRI)
else
 varinfo5_LDADD         = varinfo5so.so
 varinfo5_LDFLAGS       = $(AM_FLAG_M3264_PRI) \
				-Wl,-rpath,$(top_builddir)/memcheck/tests
endif

varinfo5so_so_SOURCES   = varinfo5so.c
varinfo5so_so_CFLAGS    = $(AM_CFLAGS) -fpic -O -Wno-shadow
if VGCONF_OS_IS_DARWIN
 varinfo5so_so_LDFLAGS  = -fpic $(AM_FLAG_M3264_PRI) -dynamic \
				-dynamiclib -all_load
else
 varinfo5so_so_LDFLAGS  = -fpic $(AM_FLAG_M3264_PRI) -shared \
				-Wl,-soname -Wl,varinfo5so.so
endif

# Build shared object for wrap7
wrap7_SOURCES           = wrap7.c
wrap7_DEPENDENCIES      = wrap7so.so
if VGCONF_OS_IS_DARWIN
 wrap7_LDADD            = `pwd`/wrap7so.so
 wrap7_LDFLAGS          = $(AM_FLAG_M3264_PRI)
else
 wrap7_LDADD            = wrap7so.so
 wrap7_LDFLAGS          = $(AM_FLAG_M3264_PRI) \
				-Wl,-rpath,$(top_builddir)/memcheck/tests
endif

wrap7so_so_SOURCES      = wrap7so.c
wrap7so_so_CFLAGS       = $(AM_CFLAGS) -fpic
if VGCONF_OS_IS_DARWIN
 wrap7so_so_LDFLAGS     = -fpic $(AM_FLAG_M3264_PRI) -dynamic \
				-dynamiclib -all_load
else
 wrap7so_so_LDFLAGS     = -fpic $(AM_FLAG_M3264_PRI) -shared \
				-Wl,-soname -Wl,wrap7so.so
endif

