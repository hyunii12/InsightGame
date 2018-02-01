package test

import org.apache.spark.SparkContext
import org.apache.spark.SparkConf

object GameData {
  def main(args: Array[String]): Unit = {
    val sc = new SparkContext(new SparkConf().setAppName("InsightGameSpark"))
    val gnameRdd = sc.textFile(args(0)).flatMap(line=>line.split(","));
    val gnameMap = gnameRdd.map(x => (x.toString, 1));
    val gnameMap_result = gnameMap.map{ case (k, v) => Array(k, v).mkString(",")};
    gnameMap_result.coalesce(1).saveAsTextFile("/result_spark/"+args(1));
    //test
  }
}