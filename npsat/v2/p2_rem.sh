#!/bin/bash

call_msat() {

	#infile="engine_4.cnf"
	#./part2.o $1 $2 $(basename $2 .cnf).sol	
	./part2.o $1 $2
	#filename = "ex_cnfs/$(basename $1 .cnf).sol"
	#local line=$(head -n 1 $(basename $2 .cnf).sol) 
	
	#if [ "$line" == "UNSAT" ];
	#then
	#	echo 0
	#else 
	#	echo 1
	#fi
	
}

#my_func "ex_cnfs/flat30-1.cnf"
export -f call_msat

parallel --gnu --progress --env PATH --env call_msat --workdir . --sshloginfile nodefile --jobs $2 call_msat $1 {} ::: gen*.cnf \
	| parallel --gnu --halt 2  exit

#parallel -j8 call_msat {} ::: gen*.cnf

