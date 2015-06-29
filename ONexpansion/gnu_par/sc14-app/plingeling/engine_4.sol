c Plingeling Parallel SAT Solver
c 
c Version ayv 86bf266b9332599f1b876e28a02fe8427aeaa2db
c 
c Copyright (C) 2010-2014 Armin Biere JKU Linz Austria.
c All rights reserved.
c 
c released Tue Apr 29 19:18:49 CEST 2014
c compiled Wed Jun 17 16:51:01 IST 2015
c 
c gcc (GCC) 4.6.3 20120306 (Red Hat 4.6.3-2)
c -Wall -O3 -DNDBLSCR  -I../yalsat -DNLGLOG -DNDEBUG -DNCHKSOL -DNLGLPICOSAT
c -DNLGLDRUPLIG
c Linux emsys1.ee.iitb.ac.in 2.6.43.8-1.fc15.i686.PAE i686
c 
c - W    0.0 assuming cores = core * physical ids in '/proc/cpuinfo' = 4
c - W    0.0 USING 4 WORKER THREADS
c - W    0.0 7984312 KB total memory according to /proc/meminfo
c - W    0.0 soft memory limit set to 2600 MB
c - W    0.0 default garbage collection limit 1
c - W    0.0 sharing of units enabled
c - W    0.0 sharing of clauses enabled
c - W    0.0 sharing of equivalences enabled
c - W    0.0 parsing sc14-app/engine_4.cnf
c - W    0.1 clause length between 1 and 58
c - W    0.1 average literal occurrence 13.56
c - W    0.1 literal occurrence standard deviation 35.91
c - W    0.1 relative literal occurrence standard deviation 264.92%
c - W    0.1 instance does not seem to be uniform random
c - W    0.1 trying to clone worker 1 from worker 0
c - W    0.1 prediction: 2 MB to be cloned + allocated 3 MB = 5 MB
c - W    0.1 4 MB total allocated memory after cloning worker 1 from worker 0
c - W    0.1 simplifying original formula with worker 0
c 
c    seconds         irredundant          redundant clauses agility   height
c            variables clauses conflicts large ternary binary    glue         MB
c 
c 0 S    0.0    6856    66653         0       0      0     0   0  0.0   0.0    3
c 1 S    0.0    6856    66653         0       0      0     0   0  0.0   0.0    3
c 
c    seconds         irredundant          redundant clauses agility   height
c            variables clauses conflicts large ternary binary    glue         MB
c 
c - W    1.0 trying to clone 2 workers
c - W    1.0 trying to clone worker 2 from worker 0
c - W    1.0 prediction: 4 MB to be cloned + allocated 7 MB = 10 MB
c - W    1.0 8 MB total allocated memory after cloning worker 2 from worker 0
c - W    1.0 trying to clone worker 3 from worker 0
c - W    1.0 prediction: 3 MB to be cloned + allocated 8 MB = 10 MB
c - W    1.1 10 MB total allocated memory after cloning worker 3 from worker 0
c 1 S    1.0    6747    66101      9452    3788    160   170   6 13.0  23.4    3
c 0 S    1.0    4952    60582       167    1244     40 11021   4  9.5  26.5    3
c 3 S    1.0    4952    60582       168    1313     39 11021   3 10.0  26.7    3
c 2 S    1.0    4952    60582       178    2015     43 11020   4  9.4  26.1    3
c 0 P    2.0    4874    53787      1023    2352    577 12905   4 11.6  22.7    3
c 2 P    2.0    4779    51789      1021    3111    574 12759   7 10.7  21.6    3
c 3 P    2.0    4505    51684      1006    2441   2262 11740   6 13.7  24.2    4
c 1 S    2.0    6298    64643     19382    6324    206   237   9 13.4  22.7    4
c 
c    seconds         irredundant          redundant clauses agility   height
c            variables clauses conflicts large ternary binary    glue         MB
c 
c - W    4.1 worker 1 is the WINNER with result 20
c
c  1 PROD   13407  74% =    3833 units  69% +    9574 cls  76% +       0 eqs   0%
c  3 prod    3789  21% =    1481 units  27% +    2290 cls  18% +      18 eqs  51%
c  0 prod     535   3% =     161 units   3% +     360 cls   3% +      14 eqs  40%
c  2 prod     445   2% =      86 units   2% +     356 cls   3% +       3 eqs   9%
c -------------------------------------------------------------------------------
c    prod   18176 100% =    5561 units 100% +   12580 cls 100% +      35 eqs 100%
c
c  1 CONS     883   5% =     871 units  16% +      12 cls   0% +       0 eqs   0%
c  3 cons     140   1% =     138 units   2% +       1 cls   0% +       1 eqs   3%
c  2 cons      54   0% =      54 units   1% +       0 cls   0% +       0 eqs   0%
c  0 cons      23   0% =      20 units   0% +       0 cls   0% +       3 eqs   9%
c -------------------------------------------------------------------------------
c    cons    1100   6% =    1083 units  19% +      13 cls   0% +       4 eqs  11%
s UNSATISFIABLE
c
c 3415 termination checks
c
c units: 5561 found, 7342 publications, 462 syncs, 75 flushed
c clauses: 12580 clauses added, 0 collected 0%, 0 gcs
c equivalences: 35 found, 17 syncs
c
c 123535 decisions, 50799 conflicts, 12417.3 conflicts/sec
c 291364220 propagations, 7.1 megaprops/sec
c 14.1 process time, 86% utilization
c
c 4.1 seconds, 45.5 MB
