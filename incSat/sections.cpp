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
		
		#pragma omp sections nowait
		{
			#pragma omp section	
			{
			for (int i=0; i<8; i++){
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
			#pragma omp section	
			{
			for (int i=8; i<16; i++){
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
			#pragma omp section	
			{
			for (int i=16; i<24; i++){
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
			#pragma omp section	
			{
			for (int i=24; i<32; i++){
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
			#pragma omp section	
			{
			for (int i=32; i<40; i++){
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
			#pragma omp section	
			{
			for (int i=40; i<48; i++){
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
			#pragma omp section	
			{
			for (int i=48; i<56; i++){
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
			#pragma omp section	
			{
			for (int i=56; i<64; i++){
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
		}
	}
	
	return 0;
}
