#!/bin/bash


for i in 12pipe_bug1_q0.cnf; do 
	for j in 1 2 3 4 5 6 7 8 9 10 
	do 
		(time ./part1.o $i -nassums=$j > performance/npsat/$(basename $i .cnf).n_ass$j.sol1) \
			&> performance/npsat/$(basename $i .cnf).n_ass$j.time1
		for k in 8; do
			(time timeout 100 ./p2_par.sh $i $k> performance/npsat/$(basename $i .cnf).core$k.n_ass$j.sol2) \
				&> performance/npsat/$(basename $i .cnf).core$k.n_ass$j.time2
		done
	done
	rm gen*
done
