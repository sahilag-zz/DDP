#include <iostream>
#include <fstream>
#include <cmath>
#include <string>
#include "functions.h"

using namespace std;

void to_cnf (int &vars, int &clauses, int matrix[], int iteration){
	ofstream file;
	//to_string must be compile with -std=c++0x flag
	file.open("output" + to_string(iteration) + ".cnf"); 

	file<<"p cnf "<<vars<<" "<<clauses<<endl;
	
	for (int i=0;i<clauses;i++){
		for (int j=0;j<vars;j++){
			if (matrix[i*vars+j]==1) file<<j+1<<" ";
			else if (matrix[i*vars+j]==-1) file<<-(j+1)<<" ";
		}
		file<<"0"<<endl;
	}
	file.close();
}

void rem_redund(int &vars, int &clauses, int matrix[]){
	bool flag, delcols[vars];
	if (vars>0 && clauses >0){
		for (int j=0;j<vars;j++){
			flag=1;
			for (int i=0;i<clauses;i++){
				if (matrix[i*vars+j]!=0){
					flag=0;
					break;
				}
			}
			if (flag==1) delcols[j]=1;
			else delcols[j]=0;
		}
		del_cols(vars,clauses,matrix,delcols);
	}
}

void disp(int &vars, int &clauses, int matrix[]){
	cout<<vars<<" "<<clauses<<endl;
	for (int i=0;i<clauses;i++){
		for (int j=0;j<vars;j++){

			cout<<matrix[i*vars+j]<<" ";
		}
		cout<<endl;
	}
	cout<<endl;
};
// used by the "reduce" function to delete appropriate rows and columns
void del_cols(int &vars, int &clauses, int matrix[], bool delcols[]){
	
	int count=0; //keeps a count of rows/columns to be deleted
	bool flag=0;
	
	for (int i=0;i<clauses;i++){
		for (int j=0;j<vars;j++){
			if (delcols[j]==1){
				count++; flag=1; 
			}
			if (flag==1 && i*j!=vars*clauses-1){  //not last element
				matrix[i*vars+j+1-count]=matrix[i*vars+j+1]; 
				//shift element by element unlike deleting rows
			}
	   }
	}
	vars-=count/clauses; //counted each column "clauses" number of times	
};
// used by the "reduce" function to delete appropriate rows and columns
void del_rows(int &vars, int &clauses, int matrix[], bool delrows[]){
	// delete rows
	int count=0; //keeps a count of rows/columns to be deleted
	bool flag=0;
	
	for (int i=0;i<clauses;i++){
		if (delrows[i]==1){
			count++; flag=1;
		}
		//atleast 1 row has to be deleted and not if last row
		if (flag==1 && i!=clauses-1){  
			for (int j=0;j<vars;j++){
				//indicing given how many rows have been deleted earlier etc etc
				matrix[(i-count+1)*vars+j]=matrix[(i+1)*vars+j]; 
			}
		}
	}
	clauses-=count;
	
};

// reduces the matrix according to "literals" array..
bool reduce(int &vars, int &clauses, int matrix[], int literals[]){
	bool delrows[clauses],delcols[vars];
	int countr=0,countc=0;
	for (int i=0;i<clauses;i++) delrows[i]=0;
	for (int i=0;i<vars;i++) delcols[i]=0;
	
	for (int i=0;i<clauses;i++){
		for (int j=0;j<vars;j++){
			if (literals[j]!=0){
				if (matrix[i*vars+j]!=0) matrix[i*vars+j]= 
					matrix[i*vars+j]*literals[j] + 1; 
					//1 --> 2, -1 --> 0 if pos literal
				if (matrix[i*vars+j]==2) {delrows[i]=1;countr++;}
				delcols[j]=1;countc++;
			}
		}
	}
	if (countr>0) del_rows(vars,clauses,matrix,delrows);
	if (countc>0 && clauses>0 && vars>0) del_cols(vars,clauses,matrix,delcols);
	
	bool flag=0;
	for (int i=0;i<clauses;i++){
		flag=0;
		for (int j=0;j<vars;j++){
			if (matrix[i*vars+j]!=0){flag=1;break;}
		}
		if (flag==0) return 1; //UNSAT
	}
	return 0;
};

void pureliterals(int &vars, int &clauses, int matrix[]){
    bool flag, purelit, flag1;
    int literals[vars],temp;
    
    while(1){
		for (int j=0;j<vars;j++){
		    flag=0; purelit=0; flag1=0, temp=0;
		    for (int i=0;i<clauses;i++){
		        if (matrix[i*vars+j]!=0){
		            if (flag==0){
		                temp=matrix[i*vars+j];
		                flag=1;
		                purelit=1;
		            }
		            else{
		                if (matrix[i*vars+j]==temp) purelit=1;
		                else {purelit=0; break;}
		            }
		        }
		    }
		    if (purelit==1) {literals[j]=temp; flag1=1;}
		    else literals[j]=0;
		    
		}

		if (flag1==1) reduce(vars,clauses,matrix,literals);
		else break;
	}
};

//finds unit clauses given a matrix
void unitclauses(int &vars, int &clauses, int matrix[]){

	int unitliterals[vars]; //for storing literals --> unit clauses	
	bool flag;	
	
	while(1){
		for (int i=0;i<vars;i++) unitliterals[i]=0;
		flag=0;
		for (int i=0;i<clauses;i++){
			int check=0; //checks if unit clause
			int var,temp;
			for (int j=0;j<vars;j++){
				if (matrix[i*vars+j]!=0){
					temp = matrix[i*vars+j];
					check = check+1; 
					var = j; //if unit clause this will be the corr var
				}			
			}
			if (check==1) { //then unit clause
			
				unitliterals[var]=temp; flag=1; 
			}		
		}
		if(flag==1) reduce(vars, clauses, matrix, unitliterals);
		else break;	
	}
};

