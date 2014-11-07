using namespace std;
#include <omp.h>
#include<iostream>
#define N     1000

main ()
{

int tid,i;
float a[N], b[N], c[N], d[N];

/* Some initializations */
for (i=0; i < N; i++) {
  a[i] = i * 1.5;
  b[i] = i + 22.35;
  }

#pragma omp parallel shared(a,b,c,d) private(i,tid)
  {
tid = omp_get_thread_num();
  #pragma omp sections nowait
    {

    #pragma omp section
    for (i=0; i < N; i++)
      c[i] = tid;

    #pragma omp section
    for (i=0; i < N; i++)
      d[i] = tid;

    }  /* end of sections */

  }  /* end of parallel section */
for (int i=0;i<N;i++) cout<<c[i]<<" "<<d[i]<<" ";
	cout<<endl;
}

