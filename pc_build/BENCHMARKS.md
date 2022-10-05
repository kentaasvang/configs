# Benchmarks

## 05.10.2022

**CPU**
```
sysbench 1.0.20 (using system LuaJIT 2.1.0-beta3)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Prime numbers limit: 10000

Initializing worker threads...

Threads started!

CPU speed:
    events per second:  2018.69

General statistics:
    total time:                          10.0002s
    total number of events:              20190

Latency (ms):
         min:                                    0.49
         avg:                                    0.49
         max:                                    0.94
         95th percentile:                        0.50
         sum:                                 9948.27

Threads fairness:
    events (avg/stddev):           20190.0000/0.00
    execution time (avg/stddev):   9.9483/0.00
``` 

**Memory**
```
sysbench 1.0.20 (using system LuaJIT 2.1.0-beta3)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Running memory speed test with the following options:
  block size: 1KiB
  total size: 102400MiB
  operation: write
  scope: global

Initializing worker threads...

Threads started!

Total operations: 2816459 (281610.00 per second)

2750.45 MiB transferred (275.01 MiB/sec)


General statistics:
    total time:                          10.0001s
    total number of events:              2816459

Latency (ms):
         min:                                    0.00
         avg:                                    0.00
         max:                                    0.04
         95th percentile:                        0.00
         sum:                                 3337.33

Threads fairness:
    events (avg/stddev):           2816459.0000/0.00
    execution time (avg/stddev):   3.3373/0.00
```

