# Data Sources and Sinks in Spark
Jayesh Thakrar / Under-the-Hood: Apache Spark Data Sources and Sinks

## Built-ins
* spark.read.csv("path")
* spark.read.orc("path")
* spark.read.parquet("path")
* spark.read.format("class-name").load()
* spark.read.format("...").schema("...").load()
* etc

## What is a spark data source?
* Handles connection / reads / API to your DB, csv, orc, parquet, etc.
* Batch, microbatch, and continuous options
* As of Feb 2018 with V2 Data Source API, much easier to define your own source **if necessary**
  * Be aware that a lot of sources already exist, not always necessary to DIY

## Sample Code
* https://github.com/JThakrar/sparkconn
* When creating datareaders, classes are automatically created and destroyed for each partition of data being read
  * From the crowd: could you just pool them, return the connection and re-use it rather than destroy it? Possibly, but not included in their original architecture
  * All this happens by instantiating a single class when reading data

## Example Custom Datasource
* Demonstrated custom source that requires partitions and rows per partition in scala extending java code
* could do something similar specifically for postgres connections, then subclass further to just those for current project
* 4 classes to override for reading: ReadSupport, DataSourceReader, DataReaderFactory, and DataReader
* 5 to override for writnig: WriteSupport, DataSourceWriter, DataWriterFactory, DataWriter, and WriterCommitMessage

## Practical Considerations
* How you pass the config to Spark can be done a number of ways - choose what is best. Either in spark.conf or pass it into the method itself.
* Partitions: How do you define a partition in your data source? If they are native a la Cassandra, that's one thing, but what if this is just one big table you're using and are partitioning it just for spark?
* Data schema: i/o for this
* Parallelism: relates to partitions of course, keep them consistent
* Batch / Streaming: what's required for your system? What are you optimizing for? Streaming is not fully stabilized yet, would stay away 
* Restart / Recovery: Onus is on you to save your checkpoints and commit when writing a new source/sink. Always test.

