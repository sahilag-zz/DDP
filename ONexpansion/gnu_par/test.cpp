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

	#pragma omp parallel num_threads(1)
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
		
		#pragma omp for schedule(dynamic, chunk) nowait
		for (int i=0; i<64; i++){
			int tid = omp_get_thread_num();
  			//printf("Hello %d ", tid);
			std::stringstream ss;
			ss << "gen" << i << ".cnf" ;
			std::string file = ss.str();
			//std::cout<<file<<std::endl;
			in1 = gzopen(file.c_str(), "rb");
			readassums(in1,dummy);
			//parse_assums(in1, S);
			//parse_time = cpuTime();
			ret = S.solve(dummy);
			//double solve_time = cpuTime();
			//std::cout<<"Solve time: "<<solve_time-parse_time<<" s\n";
			//looptime += solve_time-parse_time;	
			printf("%s %d ",ret ? "sat" : "unsat",tid);
		}
	}
	//std::cout<<"total time: "<<cpuTime()-init_time<<" s "<<looptime<<"\n";
	//double parse_time = cpuTime();
	//std::cout<<"Parse time: "<<parse_time-initial_time<<" s"<<std::endl;
	
	// Parse in assumptions file and add to Solver S
	
	/*std::ifstream  infile;
	infile.open(argv[2]);
	int temp;
	vec<Lit> clause;
	
	while(infile>>temp){

		clause.push(mkLit(abs(temp-1), temp>0 ? true:false));
		S.addClause(clause);
		clause.clear();
	}*/

	//gzFile in1 = gzopen(argv[2], "rb");
	//parse_assums(in1, S);
	//gzclose(in1);
	   
	// Solve and output to file 

	/*
	FILE* res = (argc >= 4) ? fopen(argv[3], "wb") : NULL;
	
	//printf(ret == l_True ? "SATISFIABLE\n" : ret == l_False ? "UNSATISFIABLE\n" : "INDETERMINATE\n");
    if (res != NULL){
        if (ret == l_True){
            fprintf(res, "SAT\n");
            for (int i = 0; i < S.nVars(); i++)
                if (S.model[i] != l_Undef)
                    fprintf(res, "%s%s%d", (i==0)?"":" ", (S.model[i]==l_True)?"":"-", i+1);
            fprintf(res, " 0\n");
        }else if (ret == l_False)
            fprintf(res, "UNSAT\n");
        else
            fprintf(res, "INDET\n");
        fclose(res);
    }
	*/
	return 0;
}
