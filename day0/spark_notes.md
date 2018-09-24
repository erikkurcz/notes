## Spark itself

### Architechture
* Storage
  * Anything that is Hadoop compatible
* API
  * Scala, Java, Python
* Cluter Managemente Framework
  * standalone server or Mesos or YARN (Kubernetes soon)

### Components of (slide 42)
* Spark program is actually 2 programs: driver and executor
  * Executor runs on cluter notes ('worker notes') or in local threads
  * Around 4 is typically good (threads)
  * Cluter manager spluts jobs into tasks, then distributes to workers
    * Results return to driver program
* Driver program --> where you literally type commands
* Cluster manager --> distribution of tasks

### Spark Ecosystem (in order of usefulness for a rookie)
* Spark SQL Dataframes
* Mllib / ML
* Spark Streaming
* GraphX (graphics)

### SparkContext
* Main entrypoint for everything
  * Tells Spark how / where to access a cluster
  * How to connect cluster managers
  * Coordinates processes running on differnt notes
  * Used to create RDDs (Resilient Distributed Datasets)

### RDDs
* The primary abstraction for spark's data
* Can be created from file system, various storage types like Cassandra etc
* **Of Note:** Immutable once created
* Many filetypes supported: SequenceFiles, Avro, Parquet, Hadoop-compatible files
  * Arrow is in-memory parquet, effectively
  * ORC also acceptable, and is also columnar, supports "pushdown" 
    * Pushdown: only loads into memory data that matches query pattern

### RDD Operations
* Transformations Create new RDD from existing each time (since RDDs are immutable). **No transforamtions are evaluated until an action is called**
* Actions: Evaluate the lined-up transformations, gets results
* Be aware: this means you might be like 'wow look how fast it loaded this terabyte of data!'
  * But in reality it hasn't executed the load until you need to do something with that data, such as adding 1 to each element in the Terabyte of data
  * and *then* the operation takes forever because it's loading in and adding then returning
* All of this depends on the DAG of transformations
  * Whenever a node fails, DAG is replicated already so you're good to go
* Transformations: map, filter, distinct, flatMap
- Actions: reduce, take, collect, takeOrdered

### Persistence
* using memory option of Memory and Disk means if you run out of space in memory, it will dump to disk. 
  * performance hit? Yes. Saves your life for when you have a bigger job than expeected? Also yes.
  



