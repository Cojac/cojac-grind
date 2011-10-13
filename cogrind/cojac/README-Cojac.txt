==============================================================
Cojac-grind, a low level "numerical sniffer" based on Valgrind
==============================================================


1. Introduction
---------------

Cojac-grind watches arithmetic operations on-the-fly and signals 
suspicious events like: 

- Integer overflow
- NaN or Infinite result after a floating point operation
- Smearing (floating point addition which has no effect because of too
  different orders of magnitude)
- Cancellation (subtracting very close numbers, so that the (often noisy) 
  least significant bits are promoted to top significance)
- Comparing very close floating point numbers
 
It is intended for education purposes, and maybe as a diagnostic tool (we
will only know after collecting feedback from users!).

It's a first prototype. No warranty at all. We offer a far better tool 
for Java (https://code.google.com/p/cojac).


2. Get Cojac, Build, Install
----------------------------

- Download the tarball cojacgrind.tar.gz
- Configure, make, make install
- You may want to integrate Cojac into a newer Valgrind release : 
  - copy the cojac folder
  - adapt valgrind/Makefile.am (beginning): TOOLS =	... cojac
  
  
3. Usage
--------

Usage: valgrind --tool=cojac [options] program

Options: 

    --i16=yes|no          Watch 16bits int operations [yes]
    --i32=yes|no          Watch 32bits int operations [yes]
    --f32=yes|no          Watch 32bits float operations [yes]
    --f64=yes|no          Watch 64bits double operations [yes]
    --castToI16=yes|no    Watch int to short typecasting [yes]
    --stacktrace=<number> Depth of the displayed stacktrace [1] 
    --aggr=no|yes         Reports problems even where file/line cannot
                          be determined [no]


4. Limitations
--------------

There are _many_ limitations, the following list is certainly incomplete.

- Possible architectures: only x86 or amd64
- Little-endian architectures: not supported
- SIMD operations: not instrumented yet. 
    You may be interested in disabling the feature at compile-time for the instrumented program
    with: gcc -mno-mmx -mno-sse -mno-sse2 -mno-sse3   (but remember sse is required for amd64!)    
- 64bit long: only superficially tested...
- 8bit char: not instrumented (well, it is a decision)
- Suppression mechanism: not supported
- docs/tests folder: not implemented yet
- inherent limitations due to the "semantic distance" between source code
  and binary code: 
  - impossibility of distinguishing signed vs unsigned additions
  - subtraction translated as adding the complement
  - operations on long decomposed in several operations on int
  - ...
  
Any comment is welcome. Happy numerical problem sniffing!

frederic.bapst@gmail.com
