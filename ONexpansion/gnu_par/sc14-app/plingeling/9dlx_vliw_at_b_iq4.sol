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
c - W    0.0 parsing sc14-app/9dlx_vliw_at_b_iq4.cnf
c - W    0.7 clause length between 1 and 131
c - W    0.7 average literal occurrence 21.78
c - W    0.7 literal occurrence standard deviation 144.98
c - W    0.7 relative literal occurrence standard deviation 665.72%
c - W    0.7 instance does not seem to be uniform random
c - W    0.7 trying to clone worker 1 from worker 0
c - W    0.7 prediction: 52 MB to be cloned + allocated 53 MB = 104 MB
c - W    0.7 73 MB total allocated memory after cloning worker 1 from worker 0
c - W    0.7 simplifying original formula with worker 0
c 
c    seconds         irredundant          redundant clauses agility   height
c            variables clauses conflicts large ternary binary    glue         MB
c 
c 0 S    0.0  106006  1598300         0       0      0     0   0  0.0   0.0   53
c 1 S    0.0  106006  1598300         0       0      0     0   0  0.0   0.0   53
c 0 S    1.0  106006  1598300         0       0      0     0   0  0.0   0.0   56
c 1 S    1.0  106006  1598269       126      41     80     2   1  4.9 1788.4   55
c 0 P    2.0  106006  1598269         0       0      0  1106   0  0.0   0.0   56
c 1 S    2.0  106006  1598269       196      74    117     2   0  6.8 3057.2   55
c 1 S    5.0  105446  1598269      2597    2223    220    37   0 18.2 3418.8   56
c 0 P    5.0  105445  1573483         0       0      0 15481   0  0.0   0.0   61
c 0 P   10.0  105445  1526966         0       0      0 10116   0  0.0   0.0   64
c 1 S   10.0  102476  1598269     14172    5264    443   170   1 23.0 2439.6   56
c 1 S   20.0  102475  1598269     36458    7913    715   444   0 25.4 1884.2   56
c 0 P   20.4  105445  1521306         0       0      0 10116   0  0.0   0.0   76
c 
c    seconds         irredundant          redundant clauses agility   height
c            variables clauses conflicts large ternary binary    glue         MB
c 
c - W   25.1 trying to clone 2 workers
c - W   25.1 trying to clone worker 2 from worker 0
c - W   25.1 prediction: 57 MB to be cloned + allocated 115 MB = 171 MB
c - W   25.1 132 MB total allocated memory after cloning worker 2 from worker 0
c - W   25.1 trying to clone worker 3 from worker 0
c - W   25.1 prediction: 37 MB to be cloned + allocated 132 MB = 169 MB
c - W   25.2 169 MB total allocated memory after cloning worker 3 from worker 0
c 1 S   30.0   97916  1539700     64906   15571    930   803   1 25.4 1578.9   57
c 0 P   30.0   70480  1399173      2103    4627    276 15082   1 20.8 1559.0   40
c 2 P   30.0   70515  1398011      2111    5566    372 13372   1 23.7 1460.6   65
c 3 P   30.3   70477  1400253      2108    4963    333 10610   0 29.2 1733.8   36
c 1 S   40.0   90904  1539700     86912   16062   1169  1136   0 25.0 1410.1   58
c 3 S   40.0   61720  1290089     11032    5522    518 10964   1 23.0 1286.2   50
c 2 P   40.0   62257  1268763     10271    6210    642 17665   1 23.3 1263.7   58
c 0 P   40.1   62230  1267867     10246    6129    528 17824   1 22.4 1186.3   36
c 1 S   50.0   88881  1347364    107261   20335   1332  1574   1 24.1 1289.8   51
c 2 P   50.0   59404  1083496     18374    7990  33713 116648   1 23.9 1107.6   53
c 0 P   50.0   59295  1143543     20310    7930  39893 57170   2 22.3 992.9   54
c 3 S   50.0   59014  1235621     31063   12596    763 14596   0 22.5 1000.1   50
c 1 S   60.0   88628  1347364    140635   21811   1465  1770   1 28.0 1222.7   54
c 2 P   60.0   57282  1081828     18374    7984  33740 118061   1 23.9 1107.6   50
c 0 P   60.0   57259  1095208     20310    7929  39927 82238   2 22.3 992.9   50
c 3 S   60.0   55041  1130434     41732   11755  33839 23635   1 23.5 949.1   50
c 1 S  120.0   86188  1281521    285272   31076   3072  3374   0 29.6 1066.5   50
c 0 P  120.0   45725   865759     85846   19395  34940 30142   2 26.1 853.5   45
c 2 S  120.0   46182   890326     65603   14468  36693 44881   1 27.6 1131.9   46
c 3 S  120.0   46714   900788    142288   21415  37717 23082   2 32.1 996.4   45
c 1 S  180.0   85760  1250632    425890   55012   5093  4861   1 29.3 1015.9   56
c 2 S  180.0   43664   822574    209312   33557  36633 27288   2 26.5 1025.1   48
c 3 S  180.0   45305   883131    269021   31768  38253 30783   2 33.0 1021.7   47
c 0 S  180.0   43136   767890    174558   22419  33868 68257   1 28.5 966.2   44
c 1 S  240.0   83724  1250632    580229   47652   6429  5649   2 33.4 1023.8   51
c 2 P  240.0   39072   695576    290329    3282  34980 39824   2 28.6 1042.0   50
c 0 S  240.0   37804   678301    252452   16542  34256 80478   1 28.2 954.1   43
c 3 S  240.0   41726   819162    376294   36409  43614 27061   2 33.0 1010.1   45
c 1 S  300.0   83640  1210819    705372   77262   8865  6610   0 33.2 1003.0   59
c 0 S  300.0   37489   672709    415920   35677  38859 69197   1 28.8 939.6   45
c 3 S  300.0   40971   803694    533458   48828  48888 37430   1 32.1 979.4   49
c 2 S  300.0   38002   693993    448633   30256  39283 41288   1 28.1 969.3   44
c 
c    seconds         irredundant          redundant clauses agility   height
c            variables clauses conflicts large ternary binary    glue         MB
c 
c - W  398.6 worker 0 is the WINNER with result 20
c
c  1 PROD  137757  28% =   17844 units  44% +  119913 cls  26% +       0 eqs   0%
c  0 prod  129134  26% =    4244 units  10% +  124643 cls  27% +     247 eqs   9%
c  2 prod  117495  23% =   10924 units  27% +  104691 cls  23% +    1880 eqs  67%
c  3 prod  116055  23% =    7438 units  18% +  107944 cls  24% +     673 eqs  24%
c -------------------------------------------------------------------------------
c    prod  500441 100% =   40450 units 100% +  457191 cls 100% +    2800 eqs 100%
c
c  1 CONS   19731   4% =   19723 units  49% +       8 cls   0% +       0 eqs   0%
c  0 cons   19531   4% =   19266 units  48% +      15 cls   0% +     250 eqs   9%
c  3 cons   12516   3% =   12286 units  30% +       0 cls   0% +     230 eqs   8%
c  2 cons    7196   1% =    6964 units  17% +       0 cls   0% +     232 eqs   8%
c -------------------------------------------------------------------------------
c    cons   58974  12% =   58239 units 144% +      23 cls   0% +     712 eqs  25%
s UNSATISFIABLE
c
c 114573 termination checks
c
c units: 40450 found, 44656 publications, 41027 syncs, 673 flushed
c clauses: 457191 clauses added, 452660 collected 99%, 47 gcs
c equivalences: 2800 found, 136 syncs
c
c 151514907 decisions, 3247439 conflicts, 8146.8 conflicts/sec
c 39816681060 propagations, 10.0 megaprops/sec
c 1533.2 process time, 96% utilization
c
c 398.6 seconds, 672.1 MB
