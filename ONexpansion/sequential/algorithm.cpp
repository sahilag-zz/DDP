#include <iostream>
#include "functions.h"

using namespace std;

const int N0 = 10;
int iteration = 0;

bool decompose(const int &vars, const int &clauses, const int matrix[]){
	bool val;
	for (int i=0;i<4;i++){
		//remember to make a copy of EVERYTHING!
		int newvars=vars, newclauses=clauses,
			ONterm[newvars]; //ith ON term
		for (int j=0;j<newvars;j++){
			ONterm[j]=0;
		}
		ONterm[0]=(i/2)*2-1;
		ONterm[1]=(i%2)*2-1;
		//matrix copy
		int matrixcopy[newvars*newclauses];
		for (int j=0;j<newclauses;j++){
			for (int k=0;k<newvars;k++){
				matrixcopy[j*newvars+k]=matrix[j*newvars+k];
			}
		}

		val = reduce(newvars,newclauses,matrixcopy,ONterm);
		if (val==1) continue; //UNSAT
		val = algorithm(newvars,newclauses,matrixcopy);
		if (val==1) return 1;
	}
	return 0;
}
bool algorithm(int &vars, int &clauses, int matrix[]){
	//debugging purpose
	//iteration++;
	//cout<<"iteration "<<iteration<<endl<<endl;
	
	
	
	//disp (vars,clauses,matrix);
	
    pureliterals(vars,clauses,matrix);
    
    //disp (vars,clauses,matrix);
    
   	unitclauses(vars,clauses,matrix);
    
    //disp (vars,clauses,matrix);
    rem_redund(vars,clauses,matrix);
    
	
	
	bool val;
	
	if (vars<=N0 || clauses<=N0){
		val=solveMinisat(vars,clauses,matrix);
		
		if (val==1) {cout<<"hurray\n";return 1;}
		//else cout<<"oh no!\n";
	}
	else{
		val=decompose(vars,clauses,matrix);
		if (val==1) return 1;
	}
	return 0;
    
}
