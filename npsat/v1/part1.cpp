//reading a cnf file and calculating frequencies of each literal

#include <iostream>
#include <string>
#include <fstream>
#include <sstream>
#include <cmath>
#include <algorithm>

using namespace std;

class lit{
public:
	//bool sign;
	int id;
	//int neg_occur;
	//int pos_occur;
	int occur;
	//unsigned int totalOccurs() { return neg_occur + pos_occur; }
	lit(){
		id=0; occur=0;
	} 
};
bool sortbyoccur(const lit &lhs, const lit &rhs) { return lhs.occur > rhs.occur; }
void read(const string &file, const int &n_assums){

	int nvars;
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
			break;
		} 		
	}
	lit occurlit[nvars]; lit templit;
	// loop below to extract data
	int in;
	while (input>>in){
		if (in==0){
			continue;
		}
		int temp = abs(in)-1;
		occurlit[temp].id = temp+1; occurlit[temp].occur++;
	}
	input.close();
	//for (int i=0;i<nvars;i++){
	//	cout<<occurlit[i].id<<" "<<occurlit[i].occur<<endl;
	//}
	sort(occurlit, occurlit + nvars, sortbyoccur);
	//for (int i=0;i<nvars;i++){
	//	cout<<occurlit[i].id<<" "<<occurlit[i].occur<<endl;
	//}
	// writing to gen* cnf files
	
	for (int i=0;i<pow(2,n_assums);i++){
		ofstream ofile;
		ostringstream oss;
		oss << "gen" << i << ".cnf" ;
		string file = oss.str();
		ofile.open (file.c_str());
		int temp=1;
		for (int j=0;j<n_assums;j++){
			int quot = i/temp;
			int sign = (quot%2)*2 - 1;
			ofile<< (occurlit[j].id)*sign <<" 0"<<endl;
			//ofile<< (occurlit[j].id)*sign <<" ";
			temp = temp*2;
		}
		//ofile<<"0";
		ofile.close();
	}
}
int main(int argc,char *argv[]){
	string file = argv[1];
	string useless, getassums;
	
	stringstream s; s.str (argv[2]); 
	getline(s, useless, '=');
	getline(s, getassums);
	
	int n_assums = 0;

    stringstream ss;
    ss<<getassums;
    ss>>n_assums; //convert string into int
    ss.str(""); //clear the stringstream
    ss.clear();
    //cout<<n_assums;
	read(file,n_assums);
	return 0;
}
