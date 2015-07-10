**Contents**


---

# 1. Introduction #

Cojac-grind is a prototype Valgrind tool to detect integer overflows and floating points numbers anomalies
in a Linux program. You can apply it on your own code to help uncover vicious bugs involving
arithmetic. It is only available for x86 (32 and 64bits) platforms.

Cojac-grind needs neither source code modification nor recompilation of your code (although it
is boosted if the target program contains debugging symbols).
With Cojac-grind you don't have to modify your source code or even recompile it. All the work is done at runtime and your application is not altered.

Cojac-grind is configurable, you can specify which operations are to be watched, and whether you want
a full stack trace in the warning messages.

Cojac-grind is offered (without warranty of course) in the hope it can be useful for educational purposes,
as well as in the software industry. Any comment/feedback is welcome!

It's a first prototype. No warranty at all. We offer a far better tool
for Java, named [COJAC](https://code.google.com/p/cojac).

The general concept of "numerical problem sniffer" is presented in our
[article](http://drdobbs.com/testing/232601564#) published by Dr Dobb's.


---

# 2. Download and build #

  * Download the tarball cojacgrind.tar.gz

  * Configure, make, make install

  * You may want to integrate Cojac into an existing (newer) Valgrind release:
    * copy the cojac folder into your valgrind source-code folder
    * adapt configure.in (near the end): AC\_CONFIG\_FILES([ ... cojac/Makefile cojac/tests/Makefile ...
    * adapt valgrind/Makefile.am (beginning): TOOLS =	... cojac
    * adapt valgrind/Makefile-tools.am: TOOL\_LDADD\_COMMON = -lgcc -lm
    * configure, make, make install


---

# 3. What Cojac-grind considers suspicious #

Cojac-grind essentially takes the same principles as [COJAC](https://code.google.com/p/cojac), and watches the following symptoms:

  * **Integer overflow**: the result is out-of-bounds for a 16/32/64bits integer arithmetic operation (not bit-shift operations). Examples: `3*INT_MAX, Integer.INT_MIN/-1`
  * **Smearing**:  adding/subtracting a non-zero floating point number has no effect because the two operands have excessively different orders of magnitude. Examples: `(342.0+1.0E-43), (342.0-1.0E+43)`
  * **Cancellation**: two floating point numbers almost cancel each other after an addition or subtraction. Example:  `(3.000001f - 3.0f)`
  * **Underflow**: the result of a division is so small that it gets rounded to zero. Example: `(2.5E-233 / 7.2E+233)`
  * **Questionable comparisons**: two floating point numbers are being compared, but they are very close together. Example: `if (3.000001f == 3.0f)...`
  * **Offending typecasting**: a value loses its essence after a type conversion. Examples: `(int) DBL_MAX, (int)NaN`

The detectors for the last two phenomena are not implemented yet.


---

# 4. Cojac-grind options #

Usage: `valgrind --tool=cojac [options] program`

Options:

  * **`--i16=yes|no`**           Watch 16bits int operations (default: yes)
  * **`--i32=yes|no`**           Watch 32bits int operations (default: yes)
  * **`--f32=yes|no`**           Watch 32bits float operations (default: yes)
  * **`--f64=yes|no`**           Watch 64bits double operations (default: yes)
  * **`--castToI16=yes|no`**     Watch int to short typecasting (default: yes)
  * **`--stacktrace=<number>`**  Depth of the displayed stacktrace (default: 1)
  * **`--aggr=no|yes`**          Reports problems even where file/line cannot be determined (default: no)


---

# 5. Example #

```

prompt$ valgrind  --tool=cojac  HelloCojac

==22322== Cojac-0.0.1, the Cojac-grind numerical problem sniffer
==22322== 
==22322== Cojac: Precision, AddF64     at 0x8048EFB: demoFunc (HelloCojac.c:280)
==22322== Cojac: Infinity, AddF64      at 0x8048F01: demoFunc (HelloCojac.c:281)
==22322== Cojac: Precision, SubF64     at 0x8048F0C: demoFunc (HelloCojac.c:282)
==22322== Cojac: NaN, DivF64           at 0x8048F15: demoFunc (HelloCojac.c:283)
==22322== Cojac: DivByZero, DivF64     at 0x8048F1E: demoFunc (HelloCojac.c:284)
==22322== Cojac: DivByZero, DivF64     at 0x8048F27: demoFunc (HelloCojac.c:285)
==22322== Cojac: DivByZero, DivF64     at 0x8048F30: demoFunc (HelloCojac.c:286)
==22322== Cojac: Cancellation, AddF64  at 0x8048F44: demoFunc (HelloCojac.c:287)
==22322== Cojac: Overflow, Add32       at 0x8048FA0: demoFunc (HelloCojac.c:294)
==22322== Cojac: Overflow, Mul32       at 0x8048FAB: demoFunc (HelloCojac.c:295)
==22322== Cojac: Overflow, Sub32       at 0x8048FB2: demoFunc (HelloCojac.c:296)
==22322== Cojac: Overflow, Mul32       at 0x8048FBD: demoFunc (HelloCojac.c:297)
==22322== Cojac: Overflow, Sub32       at 0x8048FC7: demoFunc (HelloCojac.c:300)
==22322== 
==22322== Cojac instrumentation statistics:
==22322==   Add32  239      
==22322==   Sub16    2      
==22322==   Sub32   79      
==22322==   Mul16    1 
==22322==   Mul32    6      
==22322==   32to16   4      
==22322==   AddF64   7      
==22322==   SubF64   5 
==22322==   MulF64   2      
==22322==   DivF64   6 
==22322== 
==22322== ERROR SUMMARY: 13 errors from 13 contexts (suppressed: 0 from 0)

```


---

# 6. Known issues #

There are still important limitations, the following list is certainly incomplete.

  * Possible architectures: only x86 or amd64 (supporting little-endian architectures will need some refactoring)

  * SIMD operations: not fully instrumented yet. You may be interested in disabling the feature at compile-time for the instrumented program with: gcc -mno-mmx -mno-sse -mno-sse2 -mno-sse3   (but remember sse is required for amd64!)

  * 8bit char: not instrumented (well, it is a decision)

  * Multi-threaded applications are not handled correctly

  * Error Suppression mechanism: not supported

  * docs/tests folder: not implemented yet

  * inherent limitations due to the "semantic distance" between source code and binary code:
    * impossibility of distinguishing signed vs unsigned additions
    * subtraction of a literal sometimes translated as adding the complement literal
    * operations on long decomposed in several operations on int
    * Compile-time expressions can't be processed: ` a=(3*INT_MAX); `
    * Of course a suspicious operation is not always the manifestation of a software defect. For instance, you can rely on integer overflows to compute a hash function, or maybe cancellation phenomenon is not a problem because the floating point numbers you deal with do not suffer from imprecision.
    * ...

Any comment is welcome (use http://groups.google.com/group/cojac-grind-discuss).


---

# 7. Related work #

We found that the idea of detecting integer overflows has been mentioned in the
Valgrind mailing list some years ago, but it didn't seem to have been
implemented. We discovered later that other research teams have recently
explored similar approaches (although we didn't find the corresponding prototypes
released as open-source contributions, except for the last reference):

  * P. Chen et al.: BRICK: A Binary Tool for Run-time Detecting and Locating Integer-based Vulnerability. In International Conference on Availability, Reliability and Security, March 2009.

  * N. J. Meng et al.: Towards the Profiling of Scientific Software for Accuracy, 2011

  * F. Benz et al.: A Dynamic Program Analysis to find Floating-Point Accuracy Problems, PLDI'12, 2012. https://github.com/fbenz/FpDebug

  * A. W. Brown et al.: Profiling floating point value ranges for reconfigurable implementation, 2007. http://www.ashleybrown.co.uk/wordpress/wp-content/uploads/2010/09/THESIS-FINAL.pdf

  * M. O. Lam et al.: Dynamic floating-point cancellation detection, Parallel Computing Journal, 2013.

  * D. An et al.: FPInst: Floating Point Error Analysis Using Dyninst, 2008

  * M. Froehlich: http://valgrind.10908.n7.nabble.com/A-floating-point-trap-tool-td16681.html, 2009

The following 2011 article gives an interesting analysis of the prevalence
of the integer overflow problem, and proposes its own detection utility IOP
(built as an extension of the clang compiler) :

  * W. Dietz et al.: Understanding Integer Overflow in C/C++. October 2011

Other interesting contributions include IntScope and RICH.


---



Happy numerical problem sniffing!

Frederic Bapst

