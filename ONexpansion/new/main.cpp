#include <iostream>
#include <vector>
#include <fstream>
#include <string>
#include <sstream>
#include "mySolver.h"

using namespace std;

int main (int argc,char *argv[]){

	mySolver S;
	
	vector <int> clause;
	
	//////////////////reading in data from file////////////////////////////
	ifstream read;
	string line,file;
	file = argv[1];
	
	if (argc>0){
		read.open(file.c_str()); //to convert string to const *char
	
		// loop below to extract #vars and #clauses
		while(getline(read,line)){
	
			if (line[0]=='c') continue; //comment
		
			if (line[0]=='p'){
				istringstream iss(line);			
				string a;

				iss >> a; 
				iss >> a; 
				iss >> S.nvars;
				iss >> S.nclauses;
				break;
			} 		
		}
	
		// loop below to extract data
		int temp, i=0; //i denotes row/clause in this loop
		while (read>>temp){
			if (temp==0){
				S.cnf.push_back(clause);
				//disp_vector(clause);
				clause.clear();
				continue;
			}
			else clause.push_back(temp);
		
		}
	
		read.close();
	
		//S.disp_cnf();
		//S.assums.push_back(6);	S.assums.push_back(4);
		//satbool test = S.simplify(); //if(test==SAT) cout<<"SAT\n";
		//S.disp_cnf(S.tempcnf);
		S.solve();
		return 0;
	}
}
