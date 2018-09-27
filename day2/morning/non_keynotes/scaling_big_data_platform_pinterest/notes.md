# Pinterest Big Data Architecture and PaaS
Jooseong Kim / Pinterest
* Bigtime recommendation engine for ideas - with visual search
* Pinterest Lens --> take picture, they find similar ones based on image recognition if you can't describe something

## Stats
* 175B pins, 250M users, 20M pins/second, 600+ engineers
* Design
  * Kafka inbound, streaming through Spark Streaming and HDFS
  * Batch through Hive, Spark, Hadoop
  * Adhoc through DataHub, presto
  * S3 for storage, HBase as well
  * Pinball/Pinflow/Skyline for orchestration
  * YARN/Mesos (?)
* 175PB of data, 150TB new data per day
* 20PB processed each day
* Everything is on cloud in AWS EC2 and S3*
* TODO: what does 'high performance and consistency' really mean?

## Self-service
* Make the platform, user does whatever they want
* Optimize platform for common workflows and operations
* Flexible / extensible platform is necessary 

## Running Jobs
* Write a query, run and test, schedule it as part of ETL pipeline, repeat
* But how?
  * spark-submit, hadoop jar, hive cli from laptop or dev server
  * but can it be done programmatically?
* Astraction
  * built core functions around setup, executing, completing, and cleaning up a job, in python. 
  * implement those 4 methods in your code, then submit the job depending on what executor you want to use, hadoop, spark, hive, etc.
  * **Configuration as code**, similar to Airflow. These form a DAG for execution
  ```workflow = {template(name='jobA',class='jobs.example.examplejobA'):[],
				template(name='jobB',class='jobs.example.examplejobB'):["jobA"],
			    template(name='jobC',class='jobs.example.examplejobC'):["jobA","jobB"]}
  ```
* Running jobs performed by RESTful job service
  * a number of issues with auth
  * Storm to manage state despite REST service being stateless itself
  * these are mostly one-off jobs it seems, not so much continuous deployment
    * then again, could have listener on kafka that calls job service on its own data
* Git commit and storage and compute would be provisioned for you --> lots of freedom, but comes at a (literal) cost of course

## Visibility
* users rely on mapreduce counters/spark job metrics to debug
* ingest mapreduce counters and make them available for querying
* metrics from spark jobs go to visibility systems
* using hive for storing counter db
* storage usage reporting
  * made S3 object inventory a Hive table rather than hitting S3 and scanning each time

## Lessons Learned
* big data is not easy, but can be easier with clean abstractions and tools
* self service tool is key
* most common operations first
* visibility and transparency is critical, must be easy to get data explaining what is happening in you platform
