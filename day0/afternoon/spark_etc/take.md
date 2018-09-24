### Spark Streaming / Databricks / Azure Part 1

* Generally good session, but felt like more of a tutorial on how to log in / set stuff up so you have ability to do analysis. And a tour of features - nothing that was wildly technical
  * What packages you want, python type, versions of kafka and other softwares, etc. 
  * Yes, very cool that Databricks handles all this for you so you can easily set up and environment and get going, but the core knowledge of understanding literally how to do that and why is critical
* A number of technical issues along the way detracted from the session
  * Not his / their fault, but still. Not much doing as a result.
* Hate to say it but might have been better off just messing around in Spark myself...
* Admittedly some stuff was helpful to see demo'd, but wish it were more hands on. Again, partially due to technical issues during first half of session.

### Spark Streaming
* Unsure if really different from kafka. Seems like it's just high frequency batch rather than kafka-esque one-by-one streaming.


### On Spark in General
* Certainly very useful, but must remember this being in memory have to be careful with it
* Would love to see direct connection to SQL/postgres for this
* Wildly faster for sql-esque data aggregations than direct from RDD source. Seems to make sense though since Spark is in-memory and I'm guessing indexes everything when it is read in
  * TODO: figure out why
* Very easy to write out to parquet format or others using this. Whether locally or on cloud.
