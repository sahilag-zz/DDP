#include <string>
#include <iostream>
#include "mySolver_vec.h"
#include "utils/System.h" //for time and memory

using namespace std;

int main (int argc,char *argv[]){

	mySolver S;
	double initial_time = Minisat::cpuTime();
	
	string file = argv[1];
	
	if (argc>0){
	
		S.read(file);
		

		double parse_time = Minisat::cpuTime();
		
		cout<<"Parse time: "<<parse_time-initial_time<<" s"<<endl;

		//S.gencnf(S.cnf);
		S.solve();		
	}
	return 0;
}
