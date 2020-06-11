#!/bin/sh
g++ utils.cpp -c

mpicxx single.cpp utils.o -o single
mpicxx parallel.cpp utils.o -o parallel
mpicxx parallel_improve.cpp utils.o -o parallel_improve

echo "Compilation succeed."
