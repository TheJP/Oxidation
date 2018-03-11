#!/bin/bash

# Script that builds and links Oxidation
# Usage ./build.sh <target-directory>
#     target-directory: Directory into which the build results will be written

mkdir $1
nasm -f elf64 oxidation_assembly/multiboot_header.asm -o $1/multiboot_header.o
# nasm -f elf64 boot.asm
# ld -n -o kernel.bin -T linker.ld multiboot_header.o boot.o

exit $?
