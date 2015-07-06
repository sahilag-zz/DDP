#!/bin/bash


for j in 1; do
	for i in *.cnf; do 
	
		(time timeout 150 plingeling -t 8 $i > plingeling/$(basename $i .cnf).try$j.sol8) \
			&> plingeling/$(basename $i .cnf).try$j.time8
	done
done
