#include <string>
#include <iostream>
#include "mySolver.h"
#include "utils/System.h" //for time and memory

using namespace std;

int main (int argc,char *argv[]){

	mySolver S;
	double initial_time = Minisat::cpuTime();
	
	string file = argv[1];
	
	if (argc>0){
	
		S.read(file);
		
		S.solve();
		double final_time = Minisat::cpuTime();
		
		cout<<"Time taken: "<<final_time-initial_time<<" s"<<endl;
		
	}
	return 0;
}
