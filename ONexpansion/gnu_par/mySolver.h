#ifndef MYSOLVER_H
#define MYSOLVER_H
#include <set>
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
	
	satbool simplify(set<int> assums, vector< vector<int> > &tempcnf);
	void solve();
	
	satbool SolveMinisat(vector< vector<int> > &tempcnf);
	satbool decompose(set<int> assums);
	void read(string &file);
	void disp_cnf();
	void disp_cnf(vector<vector <int> > &vv);
	//void disp_state();
	void disp_state(satbool &state);
	void gencnf(vector< vector<int> > &tempcnf, set <int> assums);
};
#endif

