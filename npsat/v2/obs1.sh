#!/bin/bash


#for i in SAT-Race-2010-CNF/UNSAT/*.cnf; do 
#	for j in 5 
#	do 
#		(time ./part1.o $i -nassums=$j > npsat/UNSAT/$(basename $i .cnf).n_ass$j.sol1) &> npsat/UNSAT/$(basename $i .cnf).n_ass$j.time1
#		for k in 8; do
#			(timeout 50 time ./p2_par.sh $i $k> npsat/UNSAT/$(basename $i .cnf).core$k.n_ass$j.sol2) &> npsat/UNSAT/$(basename $i .cnf).core$k.n_ass$j.time2
#		done
#	done
#	rm gen*
#done

#for i in SAT-Race-2010-CNF/SAT/*.cnf; do 
#	for j in 5 
#	do 
#		(time ./part1.o $i -nassums=$j > npsat/SAT/$(basename $i .cnf).n_ass$j.sol1) &> npsat/SAT/$(basename $i .cnf).n_ass$j.time1
#		for k in 8; do
#			(timeout 50 time ./p2_par.sh $i $k> npsat/SAT/$(basename $i .cnf).core$k.n_ass$j.sol2) &> npsat/SAT/$(basename $i .cnf).core$k.n_ass$j.time2
#		done
#	done
#	rm gen*
#done

for i in SAT-Race-2010-CNF/final/*.cnf; do 
	for j in 5 
	do 
		(time ./part1.o $i -nassums=$j > SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).n_ass$j.sol1) &> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).n_ass$j.time1
		for k in 8; do
			(time ./p2_par.sh $i $k> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).core$k.n_ass$j.sol2) &> SAT-Race-2010-CNF/finalobs/$(basename $i .cnf).core$k.n_ass$j.time2
		done
	done
	rm gen*
done
