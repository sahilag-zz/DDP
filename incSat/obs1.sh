#!/bin/bash


for i in /home/users/sahilag/DDP/npsat/v1/sc14-app/*.cnf; do 
	for j in 6 10 
	do 
		(time ./part1.o $i -nassums=$j > performance/main/$(basename $i .cnf).n_ass$j.sol1) \
			&> performance/main/$(basename $i .cnf).n_ass$j.time1
			
		(time timeout 1000 ./part2.o $i $j> performance/main/$(basename $i .cnf).n_ass$j.sol2) \
			&> performance/main/$(basename $i .cnf).n_ass$j.time2
		done
	done
	rm gen*
done
