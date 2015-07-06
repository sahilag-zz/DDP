#include <iostream>
#include <fstream>
#include <zlib.h>
#include <string>
#include <sstream>
#include <omp.h>
#include "core/Solver.h"
#include "core/Dimacsmodified.h"
#include "utils/System.h"

#define CHUNKSIZE 1
using namespace Minisat;

int main (int argc,char *argv[]){
/* Solver S is in parallel part */
	std::string getassums;
	std::stringstream s; s.str (argv[2]); 
	getline(s, getassums);
	
	int n_assums = 0;

    std::stringstream ss;
    ss<<getassums;
    ss>>n_assums; //convert string into int
    
	#pragma omp parallel num_threads(8)
	{
		Solver S;
		//double initial_time = cpuTime();
	
		// Base cnf file //
		//double init_time = cpuTime();
		gzFile in = gzopen(argv[1], "rb");
		parse_DIMACS(in, S);
		gzclose(in);
		//double parse_time = cpuTime();
		//std::cout<<"Parse time: "<<parse_time-init_time<<" s\n";	
	
		//std::cout<<"out\n";
		vec<Lit> dummy;
		gzFile in1; bool ret;
		//double looptime=0.0;
		int chunk = CHUNKSIZE;
		int size = pow(2,n_assums);
		#pragma omp for schedule(dynamic, chunk) nowait
		for (int i=0; i<size; i++){
			int tid = omp_get_thread_num();
  			//printf("Hello %d ", tid);
			std::stringstream ss;
			ss << "gen" << i << ".cnf" ;
			std::string file = ss.str();
			//std::cout<<file<<std::endl;
			in1 = gzopen(file.c_str(), "rb");
			readassums(in1,dummy);
			gzclose(in1);
			//parse_assums(in1, S);
			//parse_time = cpuTime();
			ret = S.solve(dummy);
			//double solve_time = cpuTime();
			//std::cout<<"Solve time: "<<solve_time-parse_time<<" s\n";
			//looptime += solve_time-parse_time;	
			//printf("%d %s %d \n",i,ret ? "sat" : "unsat",tid);
		}
	}
	
	return 0;
}
