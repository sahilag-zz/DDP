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
c - W    0.0 parsing sc14-app/8pipe_k.cnf
c - W    0.6 clause length between 1 and 178
c - W    0.6 average literal occurrence 56.13
c - W    0.6 literal occurrence standard deviation 355.27
c - W    0.6 relative literal occurrence standard deviation 632.89%
c - W    0.6 instance does not seem to be uniform random
c - W    0.6 trying to clone worker 1 from worker 0
c - W    0.6 prediction: 46 MB to be cloned + allocated 46 MB = 92 MB
c - W    0.6 53 MB total allocated memory after cloning worker 1 from worker 0
c - W    0.6 simplifying original formula with worker 0
c 1 S    0.0   35055  1332772         0       0      0     0   0  0.0   0.0   39
c 
c    seconds         irredundant          redundant clauses agility   height
c            variables clauses conflicts large ternary binary    glue         MB
c 
c 0 S    0.0   35055  1332772         0       0      0     0   0  0.0   0.0   39
c 1 S    1.0   35055  1332429      2527    1954    121   222   2 48.0 279.9   42
c 0 S    1.0   35055  1332772         0       0      0     0   0  0.0   0.0   40
c 1 S    2.0   35008  1332429      7047    3342    178   432   0 51.2 245.8   42
c 0 S    2.1   35055  1332772         0       0      0     0   0  0.0   0.0   41
c 1 S    5.0   35000  1332429     20072    4625    344   966   2 59.8 251.4   42
c 0 P    5.0   35000  1329966         0       0      0  2958   0  0.0   0.0   41
c 1 S   10.0   34999  1329947     44868    9889    558  1818   1 61.6 240.7   44
c 0 P   10.0   34999  1319881         0       0      0 26253   0  0.0   0.0   46
c 
c    seconds         irredundant          redundant clauses agility   height
c            variables clauses conflicts large ternary binary    glue         MB
c 
c - W   14.2 trying to clone 2 workers
c - W   14.2 trying to clone worker 2 from worker 0
c - W   14.2 prediction: 43 MB to be cloned + allocated 88 MB = 130 MB
c - W   14.2 99 MB total allocated memory after cloning worker 2 from worker 0
c - W   14.2 trying to clone worker 3 from worker 0
c - W   14.2 prediction: 27 MB to be cloned + allocated 99 MB = 125 MB
c - W   14.3 125 MB total allocated memory after cloning worker 3 from worker 0
c 1 S   20.0   30789  1329947     99080   14101    846  2474   1 66.4 225.9   45
c 3 S   20.0   26282  1005340      2073    4584   3069 26847   0 43.1 311.6   36
c 2 P   20.0   30366  1283085      2024    4106    564 36773   1 33.7 266.6   44
c 0 P   20.0   30366  1277834      2032    3446    516 35338   1 36.8 310.4   44
c 1 S   30.0   30567  1003140    146525   20316   1185  2515   1 76.1 242.2   40
c 0 P   30.0   29954  1236691      2032    3446    779 71384   1 36.8 310.4   43
c 2 P   30.0   30090  1237105      2024    4106    823 78708   1 33.7 266.6   43
c 3 S   30.0   25976   987649     28441    8061   3028 27595   1 74.6 240.2   37
c 1 S   40.0   29968  1003140    192999   24012   1601  3139   1 75.4 240.7   43
c 3 S   40.0   25002   967657     65596   14638   3163 27579   0 78.1 254.6   40
c 0 P   40.0   23924   908903      6080    4449   2422 26424   1 50.7 282.5   22
c 2 S   40.1   23824   905804      6058    4940   2923 25919   1 47.2 251.2   22
c 1 S   50.0   29352   987941    240065   24390   1538  3957   1 71.1 234.5   40
c 2 P   50.0   21105   742893      6058    4928   2246 29492   1 47.2 251.2   41
c 0 P   50.0   19628   676920      8101    6354   2529 63841   2 51.1 288.9   36
c 3 P   50.0   21797   837475     88213   11854   2848 24914   1 77.7 262.5   33
c 1 S   60.0   29352   967779    303310   24886   1694  4323   0 68.0 229.1   41
c 3 S   60.0   21102   811159    135139   13698   2848 24091   0 83.5 267.1   32
c 0 P   60.0   17079   636989     12103    1698   2411 21539   2 64.1 322.5   34
c 2 S   60.0   17084   637409     10212     150   2236 20825   8 43.2 234.0   28
c 
c    seconds         irredundant          redundant clauses agility   height
c            variables clauses conflicts large ternary binary    glue         MB
c 
c - W  106.7 worker 1 is the WINNER with result 20
c
c  1 PROD   27551  37% =     885 units   8% +   26666 cls  43% +       0 eqs   0%
c  3 prod   22582  31% =    6216 units  54% +   16360 cls  26% +       6 eqs   1%
c  0 prod   12203  16% =    1242 units  11% +   10961 cls  18% +       0 eqs   0%
c  2 prod   11651  16% =    3102 units  27% +    8034 cls  13% +     515 eqs  99%
c -------------------------------------------------------------------------------
c    prod   73987 100% =   11445 units 100% +   62021 cls 100% +     521 eqs 100%
c
c  1 CONS    9246  12% =    9245 units  81% +       1 cls   0% +       0 eqs   0%
c  0 cons    7173  10% =    7172 units  63% +       0 cls   0% +       1 eqs   0%
c  2 cons    6429   9% =    6429 units  56% +       0 cls   0% +       0 eqs   0%
c  3 cons    4639   6% =    4639 units  41% +       0 cls   0% +       0 eqs   0%
c -------------------------------------------------------------------------------
c    cons   27487  37% =   27485 units 240% +       1 cls   0% +       1 eqs   0%
s UNSATISFIABLE
c
c 28720 termination checks
c
c units: 11445 found, 11697 publications, 10388 syncs, 242 flushed
c clauses: 62021 clauses added, 55207 collected 89%, 6 gcs
c equivalences: 521 found, 69 syncs
c
c 19196093 decisions, 1128146 conflicts, 10572.2 conflicts/sec
c 10546510240 propagations, 9.9 megaprops/sec
c 395.1 process time, 93% utilization
c
c 106.7 seconds, 532.8 MB
