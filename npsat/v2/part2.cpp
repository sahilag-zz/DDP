#include <iostream>
#include <fstream>
#include <zlib.h>
#include "core/Solver.h"
#include "core/Dimacsmodified.h"
#include "utils/System.h"

using namespace Minisat;

int main (int argc,char *argv[]){

	Solver S;
	//double initial_time = cpuTime();
	
	// Base cnf file //
	gzFile in = gzopen(argv[1], "rb");
	parse_DIMACS(in, S);
	gzclose(in);
	
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
	if (argc>=3){
		gzFile in1 = gzopen(argv[2], "rb");
		parse_assums(in1, S);
		gzclose(in1);
	}   
	// Solve and output to file 
	vec<Lit> dummy;
	//double parse_time = cpuTime();
	lbool ret = S.solveLimited(dummy);
	//double solve_time = cpuTime();
	//std::cout<<"Solve time: "<<solve_time-parse_time<<" s\n";
	
	FILE* res = (argc >= 4) ? fopen(argv[3], "wb") : NULL;
	
	if (ret == l_True) std::cout<<"1\n";
	else if (ret == l_False) std::cout<<"0\n";
    else std::cout<<"2\n";
       
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
	
	return 0;
}
