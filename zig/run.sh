#!/bin/bash
zig build-exe --release-fast primes.zig; time ./primes
