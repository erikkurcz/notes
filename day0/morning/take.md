## Scala + Spark session

* *Great* session
* Took people from base linux environment to installing java, scala, and spark if they hadn't already
* Thereafter explained differences between Java and Scala, why use scala over python for spark jobs
* Plenty of well-documented examples with corresponding code
* Then moved into some light data manipulation using spark and displaying provenance on UI
* Coolest part was probably SQL-language on dataframes in spark
  * The query language we all know, with datastructures we just built
* Benefits of Spark more clear now:
  * scaling for analysis to pretty huge amounts, probably isn't much we couldn't do with this
  * might need to use scala for performance over python, but that's not difficult
  * integration with Kafka for streaming analysis (mild amounts of latency on micro-batching but still, pretty good)
  * query history and analytics via UI -- no need to build them out
