#!/bin/bash

# Script that builds and links Oxidation
# Usage ./build.sh <target-directory>
#     target-directory: Directory into which the build results will be written

# Exit the script if any command fails or has a non-zero exit code
set -e

input=oxidation_assembly

# Create all necessary output directories
mkdir -p $1/isofiles/boot/grub

# Assemble and link assembly files
nasm -f elf64 $input/multiboot_header.asm -o $1/multiboot_header.o
nasm -f elf64 $input/boot.asm -o $1/boot.o
ld -n -o $1/isofiles/boot/kernel.bin -T $input/linker.ld $1/multiboot_header.o $1/boot.o

# Create ISO file
cp $input/grub.cfg $1/isofiles/boot/grub/
grub-mkrescue -o $1/oxidation.iso $1/isofiles
