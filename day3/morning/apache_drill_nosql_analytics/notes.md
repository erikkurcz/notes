# Apache Drill for NoSQL analytics

Aman Sinha / MapR + Drill + Calcite

* Need to be able to query both NoSQL databases and distributed file systems like HDFS, and join results, but also leverage underlying indexing and partitioning capabilities of each data source

## Motivation
* Typical enterprise has heterogeneous data sources in same cluster
* NoSQL DB tables as a producer store, Parquet/CSV/Json as consumer store, ETL in between
* Ideally have unified query across styles of storage
* **Challenge:** make the cross-source engine high performance

## Architecture
* Distributed SQL query engine, originally inspired by Google Dremel paper
* "World's first schema free SQL query engine"
* Sources:
  * Distributed Filesystems: HDFS
  * NoSQL: Hbase, MongoDB
  * Streaming: Kafka
  * JDBC (MySQL, Postgres) (note: not incredibly robust)
  * Hive
  * S3, OpenTSDB
* File formats:
  *  Parquet, CSV, TSV, JSON
* Extensible - add your own plugin!
* What does a query look like?
```
SELECT * FROM dfs.yelp.business.json
               ^   ^       ^      ^
               |   |       |      |
               | workspace |    format
            plugin        table
```
* Cluster Architecture
  * Drillbits are executors, all registered with Zookeeper
  * All Drillbits can access all necessary sources for operations, Zookeeper distributes the flow across them
* Summary
  * No centralized metastore
    * Schema-on-read, so can handle changing schemas without needing to update drill metadata
    * as a result, very easy to get started
  * fully java based
  * In memory columnar processing
  * spill to disk for blocking operations under memory pressure

## Improving Query Performance on NoSQL
* Data locality is crucial
* Likewise secondary indexes on NoSQL 
  * MongoDB, Hbase+Phoenix, Couchbase, Cassandra
* Exposing index metadata to Drill enables drill planner to develop best execution plan

## Improving query performance on distributed file systems
* make directories the column names
```
 dir0    dir1   dir2  dir3
Orders / 2015 / Jan / 1.parquet
Orders / 2015 / Feb / 2.parquet

SELECT dir1 as year, dir2 as month, * FROM Orders.*;
```

## Best Practices
* Many small files or few large files (parquet)?
  * There is no one good solution
  * Case by case basis


