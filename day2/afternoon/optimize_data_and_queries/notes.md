# Optimizing query patterns and data
Julian Hyde / Original Author of Apache Calcite

## Example
* Suppose you have entire US census data
* 100 GB of data
* 5 seconds to query sum of householdSize across all records
  * Sequential scan takes 100s
  * Parallel over 40 disks in 10 machines takes 10s
  * Cached / in memory: expensive, and takes less but not always will it be fast
  * Materialize: do calculation ahead of time then reference it
* Lazy > Smart and Fast --> calc ahead of time
  * or find best way to get specific data ahead of time using Lattices

## What has Apache Calcite done to help?
* Lattices --> algorithm to design summary tables
* Specifically it finds best summary table

## Strategies for Organizing Data
* What format to use? CSV/JSON/Arrow/Parquet/ORC/binary
* Row vs Columnar?
* Storage medium? disk, flash, RAM
* Replication? sorted / partitioned
* Lossy copies? smaller copy of data that is summarized instead of just raw data
* Various combinations?
* Logical optimizations > physical optimizations
* Use of indexes
  * an index *is* in effect a table, but the value (not key) is the id of a row in another table
  * also: covering indexes - an index, but with all columns
* Materialized View
  * several tables contain information necessary to answer the query

## How to make systems self-organizing?
* How do data systems learn?
  * Goal: Improve response time, throughput, storage cost
  * Goal: be predictable (same response time on typical queries) and adaptive
* Examples:
  * cached disk blocks
  * cached query results
  * sorting on commonly used columns in query patterns
  * adjusting indexes based on queries given

## Summary Tables
* Assuming star schema for a dataset
* Create materialized view of dataset by joining together certain tables
* algorithm profiles the data to find optimal way to search for certain data
  * finding attributes in a table that have surprising correlation (state and zip code for example)
  * simultaneously finds keys, 'almost keys', and foreign keys

## Summary
* learning systems = manual tuning + adaptive + smart algos
* query history + data profiling --> lattices --> summary tables
* optimize your tables using sorts, indexes, materialized views based on actual usage to get best performance out of relational databases

## How can Calcite be used?
* ties to Spark, Hive, Drill and more