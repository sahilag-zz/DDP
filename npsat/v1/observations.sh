#!/bin/bash


for j in 1; do
	for i in SAT-Race-2010-CNF/*.cnf; do 
	
#		(time manysat2.0 $i -no-luby -rinc=1.5 -phase-saving=0 -rnd-freq=0.02 -ncores=2 -limitEx=10 -det=0 -ctrl=0 \
#			> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).try$j.sol2) &> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).try$j.time2
		
		(time manysat2.0 $i -no-luby -rinc=1.5 -phase-saving=0 -rnd-freq=0.02 -ncores=4 -limitEx=10 -det=0 -ctrl=0 \
			> manysat/$(basename $i .cnf).try$j.sol4) &> manysat/$(basename $i .cnf).try$j.time4

#		(time manysat2.0 $i -no-luby -rinc=1.5 -phase-saving=0 -rnd-freq=0.02 -ncores=8 -limitEx=10 -det=0 -ctrl=0 \
#			> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).try$j.sol8) &> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).try$j.time8
			
#		(time plingeling -t 2 $i > SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).try$j.sol2) &> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).try$j.time2
		(time plingeling -t 4 $i > plingeling/$(basename $i .cnf).try$j.sol4) &> plingeling/$(basename $i .cnf).try$j.time4
#		(time plingeling -t 8 $i > SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).try$j.sol8) &> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).try$j.time8

	done
done

for i in SAT-Race-2010-CNF/*.cnf; do 
	for j in 5 
	do 
		(time ./part1.o $i -nassums=$j > npsat/$(basename $i .cnf).n_ass$j.sol1) &> npsat/$(basename $i .cnf).n_ass$j.time1
		for k in 8; do
			(time ./p2_par.sh $i $k> npsat/$(basename $i .cnf).core$k.n_ass$j.sol2) &> npsat/$(basename $i .cnf).core$k.n_ass$j.time2
		done
	done
	rm gen*
done
