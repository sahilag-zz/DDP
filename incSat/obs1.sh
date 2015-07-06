#!/bin/bash


for i in *.cnf; do 
	for j in 1 2 3 4 5 6 7 8 9 10 
	do 
		(time ./part1.o $i -nassums=$j > performance/main/$(basename $i .cnf).n_ass$j.sol1) \
			&> performance/main/$(basename $i .cnf).n_ass$j.time1
			
		(time timeout 100 ./part2.o $i $j> performance/main/$(basename $i .cnf).n_ass$j.sol2) \
			&> performance/main/$(basename $i .cnf).n_ass$j.time2
		done
	done
	rm gen*
done
