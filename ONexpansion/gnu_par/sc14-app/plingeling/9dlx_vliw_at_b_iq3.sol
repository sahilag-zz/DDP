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
c - W    0.0 parsing sc14-app/9dlx_vliw_at_b_iq3.cnf
c - W    0.4 clause length between 1 and 110
c - W    0.4 average literal occurrence 19.98
c - W    0.4 literal occurrence standard deviation 112.96
c - W    0.4 relative literal occurrence standard deviation 565.46%
c - W    0.4 instance does not seem to be uniform random
c - W    0.4 trying to clone worker 1 from worker 0
c - W    0.4 prediction: 32 MB to be cloned + allocated 32 MB = 64 MB
c - W    0.5 53 MB total allocated memory after cloning worker 1 from worker 0
c - W    0.5 simplifying original formula with worker 0
c 1 S    0.0   69783   968294         0       0      0     0   0  0.0   0.0   33
c 
c    seconds         irredundant          redundant clauses agility   height
c            variables clauses conflicts large ternary binary    glue         MB
c 
c 0 S    0.0   69783   968294         0       0      0     0   0  0.0   0.0   33
c 1 S    1.0   69783   968266      1250    1121     50    37   1 20.8 2434.6   36
c 0 P    1.0   69783   968266         0       0      0     0   0  0.0   0.0   36
c 1 S    2.0   67360   968266      3132    2885     75    71   0 22.0 2010.1   37
c 0 P    2.0   67360   930926         0       0      0  7185   0  0.0   0.0   36
c 0 P    5.0   66784   892725         0       0      0  5724   0  0.0   0.0   39
c 1 S    5.0   67355   968266     10032    4768    182   196   1 23.7 1480.4   37
c 1 S   10.0   67352   930860     27384    9803    359   431   1 27.0 1163.7   36
c 0 P   10.0   66784   889516         0       0      0  5692   0  0.0   0.0   46
c 
c    seconds         irredundant          redundant clauses agility   height
c            variables clauses conflicts large ternary binary    glue         MB
c 
c - W   11.3 trying to clone 2 workers
c - W   11.3 trying to clone worker 2 from worker 0
c - W   11.3 prediction: 34 MB to be cloned + allocated 70 MB = 104 MB
c - W   11.3 81 MB total allocated memory after cloning worker 2 from worker 0
c - W   11.3 trying to clone worker 3 from worker 0
c - W   11.3 prediction: 23 MB to be cloned + allocated 81 MB = 104 MB
c - W   11.3 104 MB total allocated memory after cloning worker 3 from worker 0
c 1 S   20.0   63071   864984     60575   13397    557   632   2 26.1 972.2   36
c 2 P   20.0   46181   831602      1093    4413    640 25135   1 24.2 838.1   34
c 0 P   20.0   45745   822040      1069    3940    938 28705   1 22.7 660.5   33
c 3 S   20.0   42608   796242      3842    3820  25373 14558   1 22.3 790.6   33
c 1 S   30.0   62955   862064     88457   18790    867  1028   1 24.7 915.2   36
c 0 S   30.0   42430   802068      3013    3702    265 10674   0 21.9 780.2   33
c 3 P   30.1   42037   790810     23202    9256  26521 17502   2 23.6 906.2   35
c 2 P   30.1   42325   786141      3101    6763  25701 13350   1 26.0 888.9   34
c 1 S   40.0   60806   862064    112818   17025   1124  1365   1 25.1 893.5   35
c 2 P   40.0   37781   660288      5137    5715  21642 13435   2 25.2 882.0   37
c 3 S   40.0   37219   679793     34603   11924  24777 14521   1 24.0 871.0   32
c 0 P   40.0   35786   637348      7196    4597  23149 12185   1 21.7 917.5   21
c 1 S   50.0   60358   830541    144116   20247   1352  1632   1 25.7 937.7   35
c 0 P   50.0   33753   580920     14239    5654  19150 13605   1 21.4 850.1   33
c 3 S   50.0   36095   650075     59333   12445  24123 15460   2 25.2 912.6   31
c 2 P   50.1   33571   579603     11228   10094  20494 13817   2 23.4 811.9   30
c 1 S   60.0   60242   830541    169225   28714   1694  2082   1 25.4 920.4   36
c 0 S   60.0   32740   558813     36302   11549  18666 11327   1 23.2 793.7   30
c 3 S   60.0   35918   648501     86628   17822  24835 36479   1 23.6 869.2   32
c 2 S   60.0   33003   564751     26704   13480  20681 13178   2 24.9 821.1   31
c 1 S  120.0   58378   783400    353065   45984   4609  4609   1 27.2 869.8   36
c 3 S  120.0   31935   586788    281412   27275  25122 51490   1 24.9 785.9   31
c 2 S  120.0   27042   437422    165597   17471  20570 11295   2 24.3 821.1   29
c 0 P  120.0   27568   441720    194681   24234  20212 13519   2 25.3 729.6   34
c 1 S  180.0   56724   781564    524367   71596   6937  6314   2 27.5 828.4   42
c 0 S  180.0   23432   376965    356616   19538  23742 25821   1 25.7 735.2   27
c 2 S  180.0   23268   375764    341328   27779  22502 10803   2 23.7 745.3   28
c 3 S  180.1   28195   531505    423016   34487  27947 38763   1 25.8 750.9   21
c 
c    seconds         irredundant          redundant clauses agility   height
c            variables clauses conflicts large ternary binary    glue         MB
c 
c - W  188.0 worker 1 is the WINNER with result 20
c
c  1 PROD   94710  29% =   14343 units  52% +   80367 cls  27% +       0 eqs   0%
c  3 prod   79848  25% =    5881 units  22% +   73299 cls  25% +     668 eqs  35%
c  0 prod   75894  23% =    2506 units   9% +   72632 cls  25% +     756 eqs  40%
c  2 prod   74329  23% =    4596 units  17% +   69259 cls  23% +     474 eqs  25%
c -------------------------------------------------------------------------------
c    prod  324781 100% =   27326 units 100% +  295557 cls 100% +    1898 eqs 100%
c
c  1 CONS    9889   3% =    9889 units  36% +       0 cls   0% +       0 eqs   0%
c  0 cons    8186   3% =    7613 units  28% +       0 cls   0% +     573 eqs  30%
c  3 cons    6308   2% =    6140 units  22% +       0 cls   0% +     168 eqs   9%
c  2 cons    5506   2% =    5240 units  19% +       4 cls   0% +     262 eqs  14%
c -------------------------------------------------------------------------------
c    cons   29889   9% =   28882 units 106% +       4 cls   0% +    1003 eqs  53%
s UNSATISFIABLE
c
c 60051 termination checks
c
c units: 27326 found, 32500 publications, 18321 syncs, 303 flushed
c clauses: 295557 clauses added, 285643 collected 97%, 31 gcs
c equivalences: 1898 found, 128 syncs
c
c 74747142 decisions, 1788893 conflicts, 9515.8 conflicts/sec
c 16851447020 propagations, 9.0 megaprops/sec
c 723.8 process time, 96% utilization
c
c 188.0 seconds, 411.0 MB
