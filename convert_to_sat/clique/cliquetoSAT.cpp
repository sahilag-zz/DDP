// http://blog.computationalcomplexity.org/2006/12/reductions-to-sat.html

#include<iostream>
#include<fstream>
using namespace std;

int main(){


	int nodes = 4;
	int edges = 4;
	int possedges = nodes*(nodes-1)/2;
	int nonedges = possedges-edges;
	int k=4;
	int adjmat[4][4] = {{0, 1, 1, 1}, {1, 0, 0, 1}, {1, 0, 0, 0}, {1, 1, 0, 0}};
	int numvar;
	int numclauses;
	
	ofstream file;
	
	/*for (int i=0;i<nodes;i++){
		for (int j=0;j<nodes;j++){
			if(i!=j)adjmat[i][j]=1;
			else adjmat[i][j]=0;
		}
	}*/
	
	file.open("clique.cnf");
	file<<"c hello\n";
	// # variables in cnf
	// WARNING: 0 can't be used as a variable; hence added
	// "1" while calculating the variable index
	
	numvar = nodes*k;
	file<<"p cnf "<<numvar<<" ";
	
	// # clauses in cnf
	
	numclauses = k + nodes*k*(k-1)/2 + nonedges*k*(k-1);
	file<<numclauses<<endl;
	
	//the clauses
	
	for (int r=0;r<k;r++){
		for (int i=0;i<nodes;i++){
			file<<i*k + r + 1<<" ";
		}
		file<<"0\n";
	}
	
	for (int i=0;i<nodes;i++){
		for (int s=0;s<k;s++){
			for (int r=0;r<s;r++){
				file<<"-"<<i*k + s + 1<<" -"<<i*k + r + 1<<" 0\n";
			}
		}
	}
	
	for (int s=0;s<k;s++){
		for (int r=0;r<k;r++){
			if (r!=s){
				for (int j=0;j<nodes;j++){
					for (int i=0;i<j;i++){
						if (adjmat[i][j]==0) file<<"-"<<i*k + r + 1<<" -"<<j*k + s + 1<<" 0\n";
					}
				}
			}
		}
	}
	file.close();
	return 0;
}


















