#!/bin/bash

# Compilation
H2H_USE_SYSTEM_LIBC=N make v2.41 

# Check custom libc is used
TEST_BIN="./glibc_2.41/fastbin_dup"
echo "Using the custom libc:"
ldd $TEST_BIN | grep libc.so.6