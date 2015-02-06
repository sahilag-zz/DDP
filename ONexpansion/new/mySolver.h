#ifndef MYSOLVER_H
#define MYSOLVER_H

#include <vector>
using namespace std;
typedef enum satbool {
    SAT,
    UNSAT,
    NONE
} satbool;

class mySolver{
public:
	vector< vector<int> > cnf;
	//vector< vector<int> > tempcnf;
	//vector<int> assums;
	//vector<int> tempclause;
	//satbool currentstate; // !!!!Important!!!!
	//int currclauses,currvars; // could be implemented
	int nvars,nclauses;
	
	satbool simplify(vector <int> &assums, vector< vector<int> > &tempcnf);
	void solve();
	
	satbool SolveMinisat(const vector< vector<int> > &tempcnf);
	satbool decompose(vector <int> assums);
	void read(string &file);
	void disp_cnf();
	void disp_cnf(vector<vector <int> > &vv);
	//void disp_state();
	void disp_state(satbool &state);
};
#endif

