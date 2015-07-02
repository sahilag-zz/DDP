#!/bin/bash


#for j in 1 2 3; do
#	for i in SAT-Race-2010-CNF/final/*.cnf; do 
	
#		(time manysat2.0 $i -no-luby -rinc=1.5 -phase-saving=0 -rnd-freq=0.02 -ncores=2 -limitEx=10 -det=0 -ctrl=0 \
#			> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).try$j.sol2) &> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).try$j.time2
			
#		(time manysat2.0 $i -no-luby -rinc=1.5 -phase-saving=0 -rnd-freq=0.02 -ncores=4 -limitEx=10 -det=0 -ctrl=0 \
#			> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).try$j.sol4) &> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).try$j.time4

#		(time manysat2.0 $i -no-luby -rinc=1.5 -phase-saving=0 -rnd-freq=0.02 -ncores=8 -limitEx=10 -det=0 -ctrl=0 \
#			> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).try$j.sol8) &> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).try$j.time8

#		(time plingeling -t 2 $i > SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).try$j.sol2) &> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).try$j.time2
#		(time plingeling -t 4 $i > SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).try$j.sol4) &> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).try$j.time4
#		(time plingeling -t 8 $i > SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).try$j.sol8) &> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).try$j.time8
	
#	done
#done


#for i in SAT-Race-2010-CNF/final/*.cnf; do 
#	for j in 1 2 3 4 5 6 7 8 9 10 11 
#		do 
#			(time ./part1.o $i -nassums=$j > SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).n_ass$j.sol1) &> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).n_ass$j.time1
#			for k in 8; do
#				(timeout 1000 time ./p2_par.sh $i $k> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).core$k.n_ass$j.sol2) &> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).core$k.n_ass$j.time2
#			done
#			rm gen*
#		done
	
#done

#for j in 1 2 3; do
#	for i in SAT-Race-2010-CNF/final/*.cnf; do 
	
#		(time manysat2.0 $i -no-luby -rinc=1.5 -phase-saving=0 -rnd-freq=0.02 -ncores=2 -limitEx=10 -det=0 -ctrl=0 \
#			> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).ms.try$j.sol2) &> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).ms.try$j.time2
			
#		(time manysat2.0 $i -no-luby -rinc=1.5 -phase-saving=0 -rnd-freq=0.02 -ncores=4 -limitEx=10 -det=0 -ctrl=0 \
#			> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).ms.try$j.sol4) &> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).ms.try$j.time4

#		(time manysat2.0 $i -no-luby -rinc=1.5 -phase-saving=0 -rnd-freq=0.02 -ncores=8 -limitEx=10 -det=0 -ctrl=0 \
#			> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).ms.try$j.sol8) &> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).ms.try$j.time8

#	done
#done


	for i in SAT-Race-2010-CNF/final/*.cnf; do 
	
		(time minisat $i -no-luby -rinc=1.5 -phase-saving=0 -rnd-freq=0.02 \
			> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).minisat.sol) &> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).minisat.time

	done

