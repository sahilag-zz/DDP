using namespace std;
#include <omp.h>
#include<iostream>
#define CHUNKSIZE 10
#define N     100

main ()  
{

int i, chunk, tid;
float a[N], b[N], c[N];

/* Some initializations */
for (i=0; i < N; i++)
  a[i] = b[i] = i * 1.0;
chunk = CHUNKSIZE;

#pragma omp parallel shared(a,b,c,chunk) private(i,tid) 
  {
	tid = omp_get_thread_num();
  #pragma omp for schedule(dynamic,chunk) nowait
  for (i=0; i < N; i++)
    c[i] = tid; 
	
  }  /* end of parallel section */
	
	for (int i=0;i<N;i++) cout<<c[i]<<" ";
	cout<<endl;
}
