#include <iostream>
#include "mySolver.h"
#include "core/Solver.h"

using namespace std;


void disp_vector(const vector<int> &v){
    for (int i=0;i<v.size();i++){
    	cout<<v[i]<<" ";
    }
    cout<<endl;
}

// --------------------------- SOLVE() ---------------------------------------//
void mySolver::solve(){
			
	if (decompose()==SAT) cout<<"SAT\n";
	else cout<<"UNSAT\n";
}


// ------------------------- DECOMPOSE() -------------------------------------//

satbool mySolver::decompose(){
	//cout<<"decompose\n";
	static int count=1; //for ONterms (temporary) -- indicating tree depth
	//cout<<count<<endl;		
	satbool temp,temp1;
	
	simplify();
	
	if (tempcnf.size()<nclauses/2) return SolveMinisat();
	
	for (int i=0;i<2;i++){
		assums.push_back(count*(1-2*i));
		temp=simplify(); //disp_state(temp);cout<<endl;
		if (temp==UNSAT){assums.pop_back();continue;}
		else if (temp==SAT) return SAT;
		else {
			count++; 
			temp1=decompose();
			if (temp1==SAT) return SAT;
		}
		assums.pop_back();
	}
	count--;
	return UNSAT;
}
// ------------------------- SIMPLIFY() --------------------------------------//

satbool mySolver::simplify(){
	//cout<<"simplify\n";
	tempcnf.clear();
	bool flag=0;
	for (int j=0;j<cnf.size();j++){
		for (int k=0;k<cnf[j].size();k++){
			tempclause.push_back(cnf[j][k]);
			for (int i=0;i<assums.size();i++){
				
				if (assums[i]==cnf[j][k]){
					tempclause.clear();
					flag=1;break; //clause is SAT
				}
				else if (assums[i]==-cnf[j][k]){
					tempclause.pop_back();
					break;
				}
			}
			if (flag==1) break;
		}
		if (flag==0){ //if clause is SAT no need to add clause to tempcnf
			if (tempclause.size()==0) return UNSAT; 
			tempcnf.push_back(tempclause);
			tempclause.clear();
		}
		flag=0;
	}
	//disp_vector(assums);
	//cout<<"size: "<<tempcnf.size()<<endl;
	//disp_cnf(tempcnf);
	if (tempcnf.size()==0) return SAT;
	
	return NONE;
}

// ------------------------- SolveMinisat() ----------------------------------//
satbool mySolver::SolveMinisat(){
	//cout<<"minisat\n";
	Minisat::Solver S;
	bool flag;
	for(int i = 0; i < nvars; i++) {
		S.newVar();
	}
	//disp_cnf(tempcnf);cout<<nvars<<endl;
	Minisat::vec<Minisat::Lit> clause;
	int j;
	for (int i=0;i<tempcnf.size();i++){			
		for (j=0;j<tempcnf[i].size();j++){
			//cout<<i<<" "<<j<<endl;				
			clause.push(Minisat::mkLit(abs(tempcnf[i][j])-1, 
				tempcnf[i][j]>0 ? true:false));
		}
		if (j==0) S.addEmptyClause();
		else S.addClause(clause);
				
		clause.clear();			
	}
	
	Minisat::vec<Minisat::Lit> dummy;
	bool temp = S.solve(dummy);
	
	if (temp = true) return SAT;
	else return UNSAT;
	
}
//---------------------------DISPLAY FUNCTIONS--------------------------------//

void mySolver::disp_cnf(){	
	for (int i=0;i<cnf.size();i++){
		for (int j=0;j<cnf[i].size();j++){
			cout<<cnf[i][j]<<" ";
		}
		cout<<endl;
	}	
	cout<<endl;	
}
void mySolver::disp_cnf(vector<vector <int> > &vv){
	//cout<<vv.size()<<endl;	
	for (int i=0;i<vv.size();i++){
		for (int j=0;j<vv[i].size();j++){
			cout<<vv[i][j]<<" ";
		}
		cout<<endl;
	}	
	cout<<endl; 	
}
void mySolver::disp_state(){
	if (currentstate==SAT) cout<<"SAT\n";
	else if (currentstate==UNSAT) cout<<"UNSAT\n";
	else cout<<"NONE\n";
}
void mySolver::disp_state(satbool &state){
	if (state==SAT) cout<<"SAT\n";
	else if (state==UNSAT) cout<<"UNSAT\n";
	else cout<<"NONE\n";
}



