gcc -g -m64 -mno-mmx          -mno-sse2 -mno-sse3 -o H64-no-sse -lm HelloCojac.c
gcc -g -m32 -mno-mmx -mno-sse -mno-sse2 -mno-sse3 -o H32-no-sse -lm HelloCojac.c

gcc -g -m64 -o H64 -lm HelloCojac.c
gcc -g -m32 -o H32 -lm HelloCojac.c


gcc -g -S -m64 -mno-mmx          -mno-sse2 -mno-sse3 -o H64-no-sse.s -lm HelloCojac.c
gcc -g -S -m32 -mno-mmx -mno-sse -mno-sse2 -mno-sse3 -o H32-no-sse.s -lm HelloCojac.c
gcc -g -S -m64 -o H64.s -lm HelloCojac.c
gcc -g -S -m32 -o H32.s -lm HelloCojac.c

as -alhnd  H64.s > H64.lst
as -alhnd  H64-no-sse.s > H64-no-sse.lst
as --32 -alhnd  H32.s > H32.lst
as --32 -alhnd  H32-no-sse.s > H32-no-sse.lst

../../cogrind/vg-in-place --trace-flags=00100000 --trace-notbelow=0  --tool=cojac ./H64 2>H64.vex.txt
../../cogrind/vg-in-place --trace-flags=00100000 --trace-notbelow=0  --tool=cojac ./H32 2>H32.vex.txt
../../cogrind/vg-in-place --trace-flags=00100000 --trace-notbelow=0  --tool=cojac ./H64-no-sse 2>H64-no-sse.vex.txt
../../cogrind/vg-in-place --trace-flags=00100000 --trace-notbelow=0  --tool=cojac ./H32-no-sse 2>H32-no-sse.vex.txt
