#!/bin/bash


for j in 1; do
	for i in *.cnf; do 
	
		(time timeout 150 manysat2.0 $i -no-luby -rinc=1.5 -phase-saving=0 -rnd-freq=0.02 -ncores=8 -limitEx=10 -det=0 -ctrl=0 \
			> manysat/$(basename $i .cnf).try$j.sol8) &> manysat/$(basename $i .cnf).try$j.time8
	done
done

