Java Regular Expression Libraries Benchmarks
============================================

A [JMH](http://openjdk.java.net/projects/code-tools/jmh/) benchmark for different Java regular expression libraries
inspired by [tusker.org](http://tusker.org/regex/regex_benchmark.html).

To run the code:

````
# we need to skip tests since almost all libraries fail a test or an other
mvn -Dmaven.test.skip=true clean package
# run the benchmarks including libraries which are not in Maven central
java -cp lib/jint.jar:target/benchmarks.jar net.greypanther.javaadvent.regex.RegexBenchmarks
````

The benchmark code is licensed under the Apache 2.0 license. Individual libraries are licensed under their respective
licenses.

Read the post detailing the results
on [the JavaAdvent calendar](http://www.javaadvent.com/2015/12/java-regular-expression-library-benchmarks-2015.html).
                  
# Benchmark Result

MacBook Pro 2.9 GHz 6-Core Intel Core i9, macOS: 13.4.1

```
Benchmark                                 (factoryName)   Mode  Cnt          Score         Error  Units
RegexBenchmarks.benchmark   JavaUtilPatternRegexFactory  thrpt    5      34499.667 ±    7711.534  ops/s
RegexBenchmarks.benchmark  DkBricsAutomatonRegexFactory  thrpt    5    2606015.567 ±  554439.099  ops/s
RegexBenchmarks.benchmark   OrgApacheRegexpRegexFactory  thrpt    5       7470.594 ±    1649.525  ops/s
RegexBenchmarks.benchmark   ComStevesoftPatRegexFactory  thrpt    5       3059.650 ±    3344.095  ops/s
RegexBenchmarks.benchmark                 JRegexFactory  thrpt    5      85719.850 ±   83336.996  ops/s
RegexBenchmarks.benchmark      KmyRegexUtilRegexFactory  thrpt    5     226144.075 ±   75861.641  ops/s
RegexBenchmarks.benchmark               OroRegexFactory  thrpt    5      22788.896 ±   17457.158  ops/s
RegexBenchmarks.benchmark       GnuRegexpReRegexFactory  thrpt    5      14847.889 ±    2409.637  ops/s
RegexBenchmarks.benchmark   ComBasistechTclRegexFactory  thrpt    5      15037.729 ±    7455.484  ops/s
RegexBenchmarks.testLarge   JavaUtilPatternRegexFactory  thrpt    5      27591.512 ±    1576.235  ops/s
RegexBenchmarks.testLarge  DkBricsAutomatonRegexFactory  thrpt    5  224884750.279 ± 9216650.079  ops/s
RegexBenchmarks.testLarge   OrgApacheRegexpRegexFactory  thrpt    5      31181.587 ±    2530.764  ops/s
RegexBenchmarks.testLarge   ComStevesoftPatRegexFactory  thrpt    5        373.312 ±      30.658  ops/s
RegexBenchmarks.testLarge                 JRegexFactory  thrpt    5       6657.878 ±    2391.195  ops/s
RegexBenchmarks.testLarge      KmyRegexUtilRegexFactory  thrpt    5      44119.113 ±   18728.442  ops/s
RegexBenchmarks.testLarge               OroRegexFactory  thrpt    5       3036.761 ±     556.451  ops/s
RegexBenchmarks.testLarge       GnuRegexpReRegexFactory  thrpt    5       1700.221 ±     338.408  ops/s
RegexBenchmarks.testLarge   ComBasistechTclRegexFactory  thrpt    5         51.291 ±      13.061  ops/s
```

# References
          
* dk.brics.automaton: https://www.brics.dk/automaton/
* RE2/J: linear time regular expression matching in Java - https://github.com/google/re2j
* hyperscan-java: https://github.com/gliwka/hyperscan-java/tree/main