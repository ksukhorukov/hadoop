### Usage

* Set up Apache Hadoop in DFS or pseudo DFS mode. Follow this manual: http://hadoop.apache.org/docs/current/hadoop-project-dist/hadoop-common/SingleCluster.html
* `$ hadoop com.sun.tools.javac.Main Histogram.java`
* `$ jar cf histogram.jar Histogram*.class`

Assuming that:

`/user/joe/histogram/input` - input directory in HDFS
`/user/joe/histogram/output` - output directory in HDFS

Put relatively large text (e.g. War & Peace)  file/files to 'input' directory.

`$ hdfs dfs -put warandpeace.txt histogram/input`

Check it:

```
$ bin/hdfs dfs -ls histogram/input/
/user/joe/histogram/input/warandpeace.txt 
```

* `$ hadoop jar histogram.jar Histogram histogram/input histogram/output`
* `$ hdfs dfs -cat wordcount/output/part-r-00000 > raw_results.txt`
*  The resulting key/value pairs produced by thre reducer are not sorted, we need to do it: 

`chmod +x stats.rb && ./stats.rb raw_results.txt`

Final results are length:frequency pairs.

```
4: 189111
3: 173742
2: 139003
5: 121442
6: 80604
7: 61659
8: 44175
1: 35527
9: 27460
10: 16471
11: 8532
12: 3310
13: 1748
14: 624
15: 385
16: 149
17: 54
18: 23
19: 10
20: 9
21: 4
22: 3
23: 3
28: 2
37: 2
38: 2
24: 2
40: 1
27: 1
29: 1
33: 1
34: 1
```

