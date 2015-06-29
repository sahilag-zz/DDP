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
c - W    0.0 parsing sc14-app/engine_6_nd_case1.cnf
c - W    0.3 clause length between 1 and 120
c - W    0.3 average literal occurrence 19.29
c - W    0.3 literal occurrence standard deviation 91.83
c - W    0.3 relative literal occurrence standard deviation 476.08%
c - W    0.3 instance does not seem to be uniform random
c - W    0.3 trying to clone worker 1 from worker 0
c - W    0.3 prediction: 26 MB to be cloned + allocated 27 MB = 52 MB
c - W    0.3 32 MB total allocated memory after cloning worker 1 from worker 0
c - W    0.3 simplifying original formula with worker 0
c 
c    seconds         irredundant          redundant clauses agility   height
c            variables clauses conflicts large ternary binary    glue         MB
c 
c 0 S    0.0   45225   610119         0       0      0     0   0  0.0   0.0   22
c 1 S    0.0   45225   610119         0       0      0     0   0  0.0   0.0   22
c 0 P    1.0   45082   606848         0       0      0  6585   0  0.0   0.0   23
c 1 S    1.0   45082   608738      1284    1025     96    67   1 15.7  44.6   23
c 0 P    2.0   44944   591908         0       0      0  7463   0  0.0   0.0   26
c 1 S    2.0   44950   608738      3148    2582    158   111   2 15.9  40.1   24
c 1 S    5.0   44939   608738     10423    3893    351   215   4 19.6  38.0   24
c 
c    seconds         irredundant          redundant clauses agility   height
c            variables clauses conflicts large ternary binary    glue         MB
c 
c - W    5.4 trying to clone 2 workers
c - W    5.4 trying to clone worker 2 from worker 0
c - W    5.4 prediction: 24 MB to be cloned + allocated 49 MB = 72 MB
c - W    5.4 56 MB total allocated memory after cloning worker 2 from worker 0
c - W    5.4 trying to clone worker 3 from worker 0
c - W    5.4 prediction: 16 MB to be cloned + allocated 56 MB = 71 MB
c - W    5.4 71 MB total allocated memory after cloning worker 3 from worker 0
c 3 S    5.1   35337   585824        16    1351     80  4251  18 11.4 776.4   24
c 0 S    5.1   35337   585824        16    1351     80  4251  18 11.4 776.4   24
c 2 S    5.1   35337   585824        16    1351     80  4251  18 11.4 776.4   24
c 1 S   10.0   38295   608738     19991    6156    494   325   1 19.6  36.1   24
c 2 P   10.0   34664   504720      1036    2763   1329 48737   1 15.6 203.7   24
c 0 P   10.0   34664   521535      1052    2617    254 34422   2 13.6 192.3   24
c 3 P   10.0   27847   385312      3167    3816  10195  8512   6 16.4 109.0   19
c 1 S   20.0   37001   416884     41221   11903    622   474   1 20.1  35.5   21
c 2 P   20.0   34664   502949      1036    2763   1329 49099   1 15.6 203.7   29
c 3 P   20.0   26256   332718     12647    6996   8963 16172   3 17.4  58.5   21
c 0 P   20.0   34664   519767      1052    2617    256 34805   2 13.6 192.3   29
c 1 S   30.0   35481   354507     70385   11879    672   615   3 22.3  35.8   18
c 0 P   30.0   24455   283822      5129    4362   9232 34440   4 16.0  87.6   17
c 2 P   30.0   21029   214050      5152    2033   8913 50561   4 16.1  86.8   19
c 3 P   30.0   23897   301532     28548    9233   9675 18732   7 19.1  47.0   17
c 1 S   40.0   33177   332671    112910   21565    855   800   8 21.3  34.9   23
c 2 S   40.0   14285   169554     17620    5799   7524 18215   6 18.4  53.0   14
c 0 S   40.0   19177   241207     20061    7263   8478 17483   3 17.3  50.9   16
c 3 S   40.1   21418   270876     46377    6950   9278 26288   4 18.7  41.7   11
c 1 S   50.0   31923   321582    151376   20462   1007   900   7 21.2  34.4   19
c 3 P   50.0   20404   252799     73085   13368   9647 24948   6 19.9  39.6   16
c 0 S   50.0   17594   217827     39588   11167   8811 19403   2 18.8  44.1   16
c 2 S   50.0   13537   162156     57348   11289   7667 19403   6 19.4  41.1   15
c 1 S   60.0   30420   310104    196318   26100   1155  1001   7 21.1  34.2   20
c 3 P   60.0   17923   217582     77107   12645   9392 48593   6 19.7  39.1   18
c 0 S   60.0   16339   196133     66676   12168   8374 31165   3 18.9  39.5   15
c 2 S   60.0   12032   140359     72463   11859   8570 39254   4 18.9  38.6   14
c 
c    seconds         irredundant          redundant clauses agility   height
c            variables clauses conflicts large ternary binary    glue         MB
c 
c - W  102.5 worker 1 is the WINNER with result 20
c
c  1 PROD   54303  37% =   15181 units  43% +   39122 cls  36% +       0 eqs   0%
c  3 prod   37795  26% =   15081 units  42% +   21994 cls  20% +     720 eqs  38%
c  2 prod   29116  20% =    2718 units   8% +   25586 cls  23% +     812 eqs  43%
c  0 prod   25438  17% =    2628 units   7% +   22456 cls  21% +     354 eqs  19%
c -------------------------------------------------------------------------------
c    prod  146652 100% =   35608 units 100% +  109158 cls 100% +    1886 eqs 100%
c
c  1 CONS   16329  11% =   16329 units  46% +       0 cls   0% +       0 eqs   0%
c  0 cons   13057   9% =   12192 units  34% +       0 cls   0% +     865 eqs  46%
c  2 cons   10150   7% =    9602 units  27% +       0 cls   0% +     548 eqs  29%
c  3 cons    5761   4% =    5149 units  14% +       3 cls   0% +     609 eqs  32%
c -------------------------------------------------------------------------------
c    cons   45297  31% =   43272 units 122% +       3 cls   0% +    2022 eqs 107%
s UNSATISFIABLE
c
c 48054 termination checks
c
c units: 35608 found, 38352 publications, 13337 syncs, 1465 flushed
c clauses: 109158 clauses added, 106393 collected 97%, 12 gcs
c equivalences: 1886 found, 142 syncs
c
c 2200219 decisions, 814872 conflicts, 7953.0 conflicts/sec
c 9703581320 propagations, 9.5 megaprops/sec
c 396.2 process time, 97% utilization
c
c 102.5 seconds, 264.6 MB
