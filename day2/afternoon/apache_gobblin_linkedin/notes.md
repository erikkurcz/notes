# Gobblin at LinkedIn

## Infra at LNKD
* Wide variety of databases
* Some streaming, some batch
* External data comes into MySql, Espresso, Oracle
* Data is standardized and moved via Kafka
* Some streams go to derived stores, others are via batch to derived stores
* But for integration to happen at all, must have: 
  * connector diversity
  * both batch and streaming
  * multiple execution platforms

## Stats
* 300B events ingested daily
* 200TB of data ingested daily
* 250PB of data on HDFS

## Gobblin
* Whole idea is to move data from one storage format to another, either batch or streaming, across many formats and clusters
* Can apply transformations if you need to
* Logical Pipeline
  * Work Unit - a specific part of source data
    * e.g. kafka topic X, partition 10, sections 10-200
    * e.g. hive table x index 1-1000
  * Task - unit of execution
    * extracts from source, transforms, writes

## Use Cases
* CRM to Espresso
	* Gobblin as a Service
	  * Run Gobblin on a port, submit configs to it as instructions on how to move data to / from places 
	  * No need to run single jobs on single instance of Gobblin per se
* Kafka to HDFS

## Roadmap 
* 64 Contributors, > 20 corp users, more that can't be named
* Work towards graduation at this point
* Spark integration, improve integration with Azkaban, Airflow

## Demo
* Demo is a combination of Azkaban and Gobblin
* This could be a scheduled or maybe triggered job to move data from object storage through known microservices via defined DAG to structured storage
* UI for setting up sources, description, destinations, schemas etc
* Can set up dependencies as well
* Displays DAG for ease of understanding flow of data
* Entering an address in event of failure of job, or success for that matter
* Displays logs of entire operation right there so you can investigate failure easily
* scheduled jobs also very possible
* history of execution, recent completions, etc
* give it a shot: https://gobblin.io
* abtiwari@linkedin.com / abti@apache.org

## Q&A
* Ack'd that other systems also do this similar work
* If you have kafka-only system, stick to it and use kafka connector, but if you have more data mgmt needs, then gobblin may be for you
* likewise on Beam - though beam is more for defining jobs, not so much for executing
