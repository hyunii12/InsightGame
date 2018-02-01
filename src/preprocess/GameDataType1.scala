package preprocess

import org.apache.spark.SparkConf
import org.apache.spark.SparkContext

object GameDataType1 {
  def main(args: Array[String]): Unit = {
    val sc = new SparkContext(new SparkConf().setAppName("InsightGameSpark"))
    val gnameRdd = sc.textFile("/data/rawdata/"+args(0))
    val gnameMap = gnameRdd.map(x => (x.toString, 1));
    val gnameMap_result = gnameMap.map{ case (k, v) => Array(k, v).mkString(",")};
    gnameMap_result.coalesce(1).saveAsTextFile("/result_spark/"+args(1));
  }
}