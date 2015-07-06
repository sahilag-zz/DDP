#!/bin/bash

export MROOT="$PWD/minisat"
g++ -O3 -g0 -fopenmp -march=native -I$MROOT -D __STDC_LIMIT_MACROS -D __STDC_FORMAT_MACROS\
	main.cpp $PWD/minisat/core/Solvermodified.cc -lz -o part2.o
	
#time ./part2solve engine_6_nd_case1.cnf

#time ./part2 engine_6_nd_case1.cnf



