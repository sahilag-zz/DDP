#include <string>
#include "mySolver.h"

using namespace std;

int main (int argc,char *argv[]){

	mySolver S;
	
	
	string file = argv[1];
	
	if (argc>0){
	
		S.read(file);
		
		S.solve();
		return 0;
	}
}
