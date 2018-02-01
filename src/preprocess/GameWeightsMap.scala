package preprocess

import org.apache.spark.internal.config.SparkConfigProvider
import org.apache.spark.SparkConf
import org.apache.spark.SparkContext

object GameWeightsMap {
  def main(args: Array[String]): Unit = {
    val sc = new SparkContext(new SparkConf().setAppName("InsightGameSpark"));

    val weightRdd = sc.textFile("/data/game_names_weight.txt").map(attr => attr.split("\t"))
    val weightMap = weightRdd.map(attr => (attr(0).split(", "), attr(1)))
    val weightMap2 = weightMap.map(attr => (attr._1).map(attr2 => (attr2.toString, attr._2.toString)))
    val resultMap = weightMap2.flatMap(attr => attr).map { case (k, v) => Array(k, v).mkString(", ") };

    resultMap.coalesce(1).saveAsTextFile("/result_spark/game_weights")

  }
}