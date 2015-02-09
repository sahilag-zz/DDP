#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <set>
#include <algorithm>
#include "mySolver.h"
#include "core/Solver.h"

using namespace std;


void disp_vector(const vector<int> &v){
    for (int i=0;i<v.size();i++){
    	cout<<v[i]<<" ";
    }
    cout<<endl;
}

void disp_set(const set<int> &myset){
    set<int>::const_iterator it; // declare an iterator
    it = myset.begin(); // assign it to the start of the set
    while (it != myset.end()) // while it hasn't reach the end
    {
        cout << *it << " "; // print the value of the element it points to
        it++; // and iterate to the next element
    }
 
    cout << endl;
}
// --------------------------- SOLVE() ---------------------------------------//
void mySolver::solve(){
	set<int> zero; //empty set		
	if (decompose(zero)==SAT) cout<<"SAT\n";
	else cout<<"UNSAT\n";
	
	//** have to implement printing/storing of assumptions for SAT **//
}


// ------------------------- DECOMPOSE() -------------------------------------//
// currently passing assumptions by value to decompose...

satbool mySolver::decompose(set<int> assums){
	
	static int count=1; //for ONterms (temporary) -- indicating tree depth	
	vector< vector<int> > tempcnf; //for storing cnf after applying assums	
	satbool temp,temp1;
	
	simplify(assums,tempcnf);
	
	if (tempcnf.size()<nclauses/2) {count--; return SolveMinisat(tempcnf);}
	
	for (int i=0;i<2;i++){
		
		assums.insert(count*(1-2*i));
		
		// implement such that only new assums need to accounted rather than
		// the whole simplify all over again
		
		temp=simplify(assums,tempcnf);
		
		tempcnf.clear(); // to release space??
		
		if (temp==UNSAT){assums.erase(count*(1-2*i));continue;}
		else if (temp==SAT) return SAT;
		else {
			count++; 
			temp1=decompose(assums);
			if (temp1==SAT) return SAT;
		}
		assums.erase(count*(1-2*i));		
	}
	count--;
	return UNSAT;
}
// ------------------------- SIMPLIFY() --------------------------------------//

satbool mySolver::simplify(set<int> assums, vector< vector<int> > &tempcnf){
	
	tempcnf.clear();
	vector<int> tempclause;
	bool flag=0;
	for (int j=0;j<cnf.size();j++){
		tempclause.clear();
		for (int k=0;k<cnf[j].size();k++){
			tempclause.push_back(cnf[j][k]);
			if(assums.find(cnf[j][k]) != assums.end()){     			
				tempclause.clear();
				flag=1;break; //clause is SAT
			}
			else if(assums.find(-cnf[j][k]) != assums.end()){ 
				tempclause.pop_back();				
			}
			
		}
		if (flag==0){ //if clause is SAT no need to add clause to tempcnf
			if (tempclause.size()==0) return UNSAT; 
			tempcnf.push_back(tempclause);
		}
		flag=0;
	}
	if (tempcnf.size()==0) return SAT;
	
	return NONE;
}

// ------------------------- SolveMinisat() ----------------------------------//
satbool mySolver::SolveMinisat(vector< vector<int> > &tempcnf){

	Minisat::Solver S;

	for(int i = 0; i < nvars; i++) {
		S.newVar();
	}
	
	Minisat::vec<Minisat::Lit> clause;
	int j;
	for (int i=0;i<tempcnf.size();i++){			
		for (j=0;j<tempcnf[i].size();j++){				
			clause.push(Minisat::mkLit(abs(tempcnf[i][j])-1, 
				tempcnf[i][j]>0 ? true:false));
		}
		if (j==0) S.addEmptyClause();
		else S.addClause(clause);
				
		clause.clear();			
	}
	
	Minisat::vec<Minisat::Lit> dummy;
	bool temp = S.solve(dummy);
	
	if (temp == true) return SAT;
	else return UNSAT;
	
}
// ---------------------------- READ() ---------------------------------------//

void mySolver::read(string &file){

	vector <int> clause;
	ifstream input;
	string line;
	input.open(file.c_str()); //to convert string to const *char

	// loop below to extract #vars and #clauses
	while(getline(input,line)){

		if (line[0]=='c') continue; //comment
	
		if (line[0]=='p'){
			istringstream iss(line);			
			string a;

			iss >> a; 
			iss >> a; 
			iss >> nvars;
			iss >> nclauses;
			break;
		} 		
	}

	// loop below to extract data
	int temp, i=0; //i denotes row/clause in this loop
	while (input>>temp){
		if (temp==0){
			cnf.push_back(clause);
			clause.clear();
			continue;
		}
		else clause.push_back(temp);	
	}
	input.close();
	
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
	for (int i=0;i<vv.size();i++){
		for (int j=0;j<vv[i].size();j++){
			cout<<vv[i][j]<<" ";
		}
		cout<<endl;
	}	
	cout<<endl; 	
}
void mySolver::disp_state(satbool &state){
	if (state==SAT) cout<<"SAT\n";
	else if (state==UNSAT) cout<<"UNSAT\n";
	else cout<<"NONE\n";
}



