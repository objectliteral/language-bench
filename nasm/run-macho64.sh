#!/bin/bash

nasm -f macho64 prime-macho64.asm
ld prime-macho64.o -o prime-macho64
time ./prime-macho64
