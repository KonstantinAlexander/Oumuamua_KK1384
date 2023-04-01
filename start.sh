#!/usr/bin/env bash

# compile and assemble
make -f Makefile

# clean all *.o files
make clean

# install need packages for python3 files
echo "Installing required Python3 dependencies"
pip install matplotlib

