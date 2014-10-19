=== Usage

* Set up Apache Hadoop in DFS or pseudo DFS mode. Follow this manual: http://hadoop.apache.org/docs/current/hadoop-project-dist/hadoop-common/SingleCluster.html
* `$ hadoop com.sun.tools.javac.Main Histogram.java`
* `$ jar cf histogram.jar Histogram*.class

Assuming that:

/user/joe/histogram/input - input directory in HDFS
/user/joe/histogram/output - output directory in HDFS

Put several relatively large text (e.g. War & Peace)  files to 'input' directory.

* `$ hadoop jar histogram.jar Histogram histogram/input histogram/output`
* `$ hdfs dfs -cat wordcount/output/part-r-00000 > raw_results.txt`
* `chmod +x stats.rb && ./stats.rb raw_results.txt

The results are length:frequency pairs.

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
```
