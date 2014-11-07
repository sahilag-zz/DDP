#include "core/Solver.h"
#include "functions.h"
#include <iostream>


using namespace Minisat;

bool solveMinisat (int &vars, int &clauses, int matrix[]){

	//disp (vars,clauses,matrix);
    Solver S;
    bool flag;
    for(int i = 0; i < vars; i++) {
  		S.newVar();
	}
	
	vec<Lit> clause;
	for (int i=0;i<clauses;i++){
		
		flag=0;
		for (int j=0;j<vars;j++){
			
			if (matrix[i*vars+j]==1){
				clause.push(mkLit(j, true));
				flag=1;
				
			}
			else if (matrix[i*vars+j]==-1){
				clause.push(mkLit(j, false));
				flag=1;
				
			}	
		}
		
		if (flag==1) S.addClause(clause);
		else S.addEmptyClause();
		
		clause.clear();
		
	}
	
	vec<Lit> dummy;
    return S.solve(dummy);
    
}
