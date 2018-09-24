## End to End SPark with Data at Rest/Streaming/ML
URL [**here**][1]

[1]: https://apachecon.dukecon.org/acna/2018/#/scheduledEvent/d72ef3c3b7198c158

## Business Problem
* How to build system for analyzing streaming click and orders data

## Databricks on Azure
* Databricks itself is backend-agnostic, doesn't matter if it's Azure or AWS, etc
* Basically you log in and use notebooks / Spark for analysis and storage, likewise vizualization
* Can designate a path to get to csvs, but do not need to specify files themselves - it will recursively search / load using command specified at that point
* Best to specify schemas when reading in data to speed up, that way computer does not need to read all data and figure out what types are what
* You can specify languages on a cellular level - one cell is R, one is scala, another is python, another is SQL. Fantastic.
* What is the difference between RDD, DataFrame, and Dataset?
  * Seems DataFrames / DataSets are wildly faster, but why?
* Appears each call is executed locally, then instructions sent to their servers and responded. Aka you're not actually on the machine you're using when using Databricks, probably less control over what can / cannot be installed
  * Earlier on the speaker mentioned they have a few products for various use cases. Some are truly PaaS like this, others you can control your machine and get into the details of dependencies yourselves
* Biiiig benefit of Databricks on Azure is there are no dependency issues on your own computer even if you go elsewhere to work. Environment is always the same.
* Discussion on running multiple jobs off the same table/source
  * Running multiple jobs off of same data may occasionally not give expected behavior
  * Sometimes the second job might get the results of first job as input rather than original source
  * Speaker referenced a 'refresh table' command
  * Individual in crowd also suggested caching data once then making copies for each job
  * Either works, fair points all around

## Flow
* Schema can be inferred including types, unsure yet as to whether it can find nulls / raise flags on bad data (re: Vince)
* Writing to parquet format is too easy. Literally a one liner.
* Likewise loading stored file int oa table using SQL - just use the same file you just wrote to load the DataFrame in memory


