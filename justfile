build:
  mvn -DskipTests clean package

bench: build
  java -cp lib/jint.jar:target/benchmarks.jar net.greypanther.javaadvent.regex.RegexBenchmarks