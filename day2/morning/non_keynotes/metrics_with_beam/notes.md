## Universal Metrics with Beam

# Intro to Beam
* Started with MapReduce whitepaper from google in 2004
* Developed into FlumeJava and Millwheel for api and streaming
* Became Google Cloud Dataflow in 2014
* Beam thereafter
* Beam doesn't distinguish between batch and streaming
  * Batch is just lower frequency streaming
  * Streaming is infinite data, Batch is finite amounts
* Beam PTransforms
  * ParDo (a map operation)
  * GroupByKey 
* Languages and runners are independent in Beam
  * Java, Python, Go can all execute Beam jobs
  * **Back end executor of the work is Spark or similar**
  * Benefit here of using Beam is you can write the job in several languages, and Beam will decouple for you
  * Functions applied to data coming in are in whatever language, all handled by Beam

## What are metrics
1. Counter: single long value to be incremented / decremented
2. Gauge: reports latest value
3. Distribution: reports sum/mean/max/min/count etc
* Properties: accessible during execution or immediately after for batch jobs
* Metrics are scoped to a given transform
* Dynamically created during runtime
* Error handling: bundling
* Metrics are queryable

## How does pipeline author use them
* Define a private var, increment it
* how is this different from doing this outside of Beam? Not sure I'm understanding this properly
* not sure i understand why Beam is necessary here. jobs can also be defined in these languages in spark, can get same results out of it from what I know
* this presentation is likely for more guaranteed metrics on every pipeline, rather than user-defined for every jobs

## Current State and Future Work
* expand out to other backend engines like dataflow - currently just spark/flink

## Keep in mind
* metrics can be defined in user code and collected in native UI
* can be extracted to external backends independent of execution engine
