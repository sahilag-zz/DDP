#!/bin/bash
for i in sc14-app/*.cnf; do 
	for j in 6
	do 
		(time ./part1.o $i -nassums=$j > sc14-app/npsat/$(basename $i .cnf).n_ass$j.sol1) \
			&> sc14-app/npsat/$(basename $i .cnf).n_ass$j.time1
		for k in 8; do
			(time timeout 150 ./p2_par.sh $i $k> sc14-app/npsat/$(basename $i .cnf).core$k.n_ass$j.sol2) \
				&> sc14-app/npsat/$(basename $i .cnf).core$k.n_ass$j.time2
		done
	done
	rm gen*
done
