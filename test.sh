# Exit on error.
set -e

# Compile tests natively.
cc demo.test.c cc65-test.c

# Run tests natively.
demo.test.exe

# Compile tests for c64.
cl65 -O demo.test.c cc65-test.c -o demo.test.prg

# Run tests in VICE c64 emulator.
x64sc demo.test.prg
