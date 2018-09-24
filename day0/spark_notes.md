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
