#!/bin/bash

gfortran -ffree-form -O3 primes.f -o primes && time ./primes
