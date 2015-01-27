// Implementing Prof Sule's ON expansion algorithm
// http://arxiv.org/pdf/1406.4712v3.pdf
// Representing cnf using a matrix

#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
//#include <time.h>
#include "utils/System.h"
#include "functions.h"

using namespace std;

const int N0 = 4;

int main (int argc,char *argv[]){
	//clock_t tStart = clock();
	double initial_time = Minisat::cpuTime();
	int clauses, vars;
	ifstream read;
	string line,file;
	file = argv[1];
	
	//////////////////reading in data from file////////////////////////////
	
	if (argc>0){
	read.open(file);
	
	// loop below to extract #vars and #clauses
	while(getline(read,line)){
	
		if (line[0]=='c') continue; //comment
		
		if (line[0]=='p'){
			istringstream iss(line);			
			string a;

			iss >> a; 
			iss >> a; 
			iss >> vars;
			iss >> clauses;
			break;
		} 		
	}
	int matrix[clauses*vars];

	//initialize
	for (int i=0;i<clauses;i++){
		for (int j=0;j<vars;j++){
			matrix[i*vars+j]=0;
		}
	}
	// loop below to extract data
	int temp, i=0; //i denotes row/clause in this loop
	while (read>>temp){
		if (temp==0){ i++; continue;}
		if (temp>0)	matrix[i*vars+(temp-1)]=1; //temp-1 because you know why
		else matrix[i*vars+(-temp-1)]=-1;
		
	}
	read.close();
	
	////////////////// calling algorithm() //////////////////////////////////

	bool ans=algorithm(vars,clauses,matrix);
	
	double final_time = Minisat::cpuTime();
	
	// printing 
	
	if (ans==0) cout<<"UNSAT\n";
	else cout<<"SAT\n";	

	cout<<"Time taken: "<<final_time-initial_time<<" s"<<endl;
	//cout<<"Time taken: "<<((float)clock()-tStart)/CLOCKS_PER_SEC<<" s"<<endl;
	}
	return 0;
}
