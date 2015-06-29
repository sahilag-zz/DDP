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
c - W    0.0 parsing sc14-app/7pipe_k.cnf
c - W    0.3 clause length between 1 and 145
c - W    0.3 average literal occurrence 46.25
c - W    0.3 literal occurrence standard deviation 250.74
c - W    0.3 relative literal occurrence standard deviation 542.17%
c - W    0.3 instance does not seem to be uniform random
c - W    0.3 trying to clone worker 1 from worker 0
c - W    0.3 prediction: 23 MB to be cloned + allocated 24 MB = 46 MB
c - W    0.3 29 MB total allocated memory after cloning worker 1 from worker 0
c - W    0.3 simplifying original formula with worker 0
c 1 S    0.0   23900   751115         0       0      0     0   0  0.0   0.0   22
c 
c    seconds         irredundant          redundant clauses agility   height
c            variables clauses conflicts large ternary binary    glue         MB
c 
c 0 S    0.0   23900   751115         0       0      0     0   0  0.0   0.0   22
c 0 S    1.0   23900   751115         0       0      0     0   0  0.0   0.0   23
c 1 S    1.0   23900   750881      5193    2324     89   232   3 43.0 217.2   24
c 1 S    2.0   23900   750881     11736    4495    151   355   2 54.8 201.6   25
c 0 P    2.0   23900   750881         0       0      0  2570   0  0.0   0.0   23
c 0 P    5.0   23798   738370         0       0      0 21567   0  0.0   0.0   27
c 1 S    5.0   23804   747328     28942    9140    331   599   0 65.0 214.1   27
c 
c    seconds         irredundant          redundant clauses agility   height
c            variables clauses conflicts large ternary binary    glue         MB
c 
c - W    7.2 trying to clone 2 workers
c - W    7.2 trying to clone worker 2 from worker 0
c - W    7.2 prediction: 24 MB to be cloned + allocated 51 MB = 75 MB
c - W    7.2 57 MB total allocated memory after cloning worker 2 from worker 0
c - W    7.2 trying to clone worker 3 from worker 0
c - W    7.2 prediction: 16 MB to be cloned + allocated 57 MB = 73 MB
c - W    7.3 73 MB total allocated memory after cloning worker 3 from worker 0
c 1 S   10.0   21206   739285     65036   11157    434   995   1 52.6 187.0   26
c 2 P   10.0   20452   719835      1000    1831    196 21422   1 44.0 247.2   25
c 0 P   10.0   20452   722869      1001    1860    188 21615   1 40.9 266.4   25
c 3 P   10.0   18038   583657      1000    2566   2078 21586   1 45.7 255.9   22
c 1 S   20.0   20738   581692    127857   16231    593  1814   2 59.5 190.0   23
c 2 P   20.0   19144   638116      1000    1831    539 52982   1 44.0 247.2   25
c 0 P   20.0   19147   638417      1001    1860    534 53131   1 40.9 266.4   25
c 3 S   20.0   17443   568464     33057    5806   2029 22060   1 96.4 242.1   21
c 1 S   30.0   20738   581692    190626   23260    827  2651   1 55.9 187.5   23
c 2 S   30.0   13546   410447      5001    6358   2376 28817   2 59.8 248.0   20
c 0 P   30.0   19147   633428      1001    1860    542 57568   1 40.9 266.4   32
c 3 S   30.0   15833   513429     85019   12761   2048 19286   1 93.4 224.7   21
c 1 S   40.0   20209   581692    260158   26412   1245  3027   1 61.0 190.4   25
c 0 P   40.0   11796   339022      7053    1824   1499 19834   1 40.7 252.0   17
c 3 P   40.0   14895   459379    147713   12529   1846 18856   1 81.1 211.5   23
c 2 S   40.0   11625   344970     28811    5005   1969 14261   1 59.7 220.9   17
c 1 S   50.0   19311   518686    319548   36129   1592  3416   1 58.9 187.4   27
c 0 S   50.0    8940   249662     42471    9980   1716 14813   1 49.2 220.6   18
c 3 S   50.0   13087   405195    169429   16916   2396 17440   1 77.1 206.8   20
c 2 P   50.0    9850   250950     67090   10027   2029 44427   1 94.2 240.2   21
c 
c    seconds         irredundant          redundant clauses agility   height
c            variables clauses conflicts large ternary binary    glue         MB
c 
c - W   59.4 worker 1 is the WINNER with result 20
c
c  1 PROD   23084  44% =    1864 units  24% +   21220 cls  47% +       0 eqs   0%
c  3 prod   17968  34% =    4480 units  59% +   13485 cls  30% +       3 eqs   2%
c  2 prod    6102  12% =    1130 units  15% +    4953 cls  11% +      19 eqs  11%
c  0 prod    5752  11% =     154 units   2% +    5452 cls  12% +     146 eqs  87%
c -------------------------------------------------------------------------------
c    prod   52906 100% =    7628 units 100% +   45110 cls 100% +     168 eqs 100%
c
c  1 CONS    5245  10% =    5245 units  69% +       0 cls   0% +       0 eqs   0%
c  0 cons    5030  10% =    5028 units  66% +       0 cls   0% +       2 eqs   1%
c  2 cons    3988   8% =    3962 units  52% +       0 cls   0% +      26 eqs  15%
c  3 cons    2174   4% =    2173 units  28% +       1 cls   0% +       0 eqs   0%
c -------------------------------------------------------------------------------
c    cons   16437  31% =   16408 units 215% +       1 cls   0% +      28 eqs  17%
s UNSATISFIABLE
c
c 19013 termination checks
c
c units: 7628 found, 7881 publications, 5562 syncs, 211 flushed
c clauses: 45110 clauses added, 33888 collected 75%, 4 gcs
c equivalences: 168 found, 59 syncs
c
c 10657423 decisions, 743381 conflicts, 12519.0 conflicts/sec
c 5446012730 propagations, 9.2 megaprops/sec
c 221.2 process time, 93% utilization
c
c 59.4 seconds, 298.5 MB
