# Microsoft and Streaming

How Microsoft is learning to embrace the Apache Way with real time streaming, a culture talk

## Intro
* Dan Rosanova, program manager on Azure messaging services, incl:
  * Enterprise messaging - OpenMQ
  * Event hubs - similar to Kafka
  * Relay
  * Event grid
* Stats
  * 10 trillion requests, five 9s of availability
* Been in messaging space for 20+ years
  * Trading background (NY/Chi)

## Background
* Originally lots of proprietary systems, but IBM began to dominate
* But over time open source came to be, and JMS rose
  * JMS = java messaging system, indended to be a standard API for messaging software
  * Reality of the situation is that there was a lot of scope creep
    * messaging systems were too built into the rest of the systems they were used in
    * Lots of 'translator' services were built as a result 
    * overall just not great because translation shouldn't be necessary - just separate out communication and use it for what it is!
* Then came AMQP - another standard
  * Lots of success within financial services
  * But this is a *protocol* standard, not a *software* standard 
  * Had not yet solved all relevant issues for messaging across industries

## Microsoft's Journey with OSS and Culture
* *is admittedly a rough one*
* 'Linux is a cancer...' -- Steve Balmer, 2001
* Culture had lots of pressure to deliver (in a timely manner)
  * Some think collaboration is slower as a result
* Lots of super smart people, but lack of trust and awareness

## Successes and Failures with Microsoft + ASF
* Failures :(
  * Apache Qpid
    * AMQP library
    * Not fully documented, no git repo -- people used it anyway...because it worked!
    * MSFT didn't actively join / participate in the community around it, didn't take ownership of issues that others had with it
    * As a result were caught off guard when community made a major change without the original owners 
  	* Lessons learned: 
  	  * Engage with community
  	  * help users with *your* code
  	  * contribute to fixes
* Mixed
  * Apache Avro
    * Serialization
    * Messaging team started following and actively using avro
    * But someone else at msft made their own, prop avro library - which was not as robust
    * Ultimately hit snags in using prop library, should've gone open source initially
    * Lessons learned:
      * Understand culture of each project. Slower, stable releases does not necessarily mean dead project. Faster releases does not necessarily mean quality.
      * But asking community for help did make change! Still actively use avro
* Successes
  * **Apache Spark**
    * Slow to contribute to their code base, but ultimately turned around and contribute actively
  * **Spark Stream + Kafka**
    * They started using Kafka 0.10, where protocols were compatible
    * But that's 3 years old and non-stable release, msft protocol no longer supported with 2.0+
    * Gut reaction was to make a converter, but **WAIT!** 
      * This time they have opportunity to do it right and engage fully, and integrate with Kafka 2.0+
  * **Kafka** itself
    * Vibrant community, and no single company dominates
    * Actively engaged, host it in or are compatible with in 2 Azure offerings
    * Learned a lot as a company about scaled messaging systems - intend to share this in discussions, proposals, code soon

## Quotes
* "No one wants lock in. Give the customers flexibility to choose."
* "Do-ocracy: Power of those who do. In particular, negative votes on code must include a proposal for an alternative. You have to know why you don't like it and have an idea for what would be better."
* "Market grows as portability and interoperability expand"
* "Microsoft won't succeed by locking customers in. Times have changed from 20 years ago. We will succeed by being the best platform, which means we must constantly improve"
* "Cultural shift is real at MSFT. We have a growth mindset - *it's in our reviews*, and we're building a culture of learning."
* "Mission statement is on the back of every badge."
  * "Our Mission: Empower every person and every organization on the planet to achieve more."