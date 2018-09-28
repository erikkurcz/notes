# Another 10 Misconceptions about CouchDB

Joan Touzet / ASF Member, CouchDB PMC Member
* 10 Common Misconceptions about Apache CouchDB was the original
  * It's on [**youtube**][1], worth a view as it's one of the more popular DB talks
  * And is why *this* presentation is titled "*Another* ..."
* For schemaless JSON storage, convenient search

[1]: https://www.youtube.com/watch?v=BKQ9kXKoHS8

# 10 Misconceptions
1. CouchDB = MongoDB
  * CouchDB actually preceded MongoDB in development, but even still they're not the same
  MongoDB | CouchDB
  --- | ---
  Binary | HTTP (which is remarkably useful...can just curl!)
  BSON | JSON
  Speed | Durability
  Features First | Scalability First
  * Same comparison to Couchbase, which is a commercial product, and is a fork of CouchDB that went its own way
2. It's hard to install
  * Literal ```apt install couchdb``` works...
  * Erlang is just another language, not hard
3. Scaling via replication
  * 1.x: Multimaster replication for horizontal scaling
  * 2.x: Clustering instead, with sharding
    * Shard = split apart a db into different files
    * Need to research this further
    * Can also replicate multiple times, so 8 shards and 3 replicas means 24 files represent a single database
  * Best practice: if on AWS put couch in the same availability zone, because cross-node communication is frequent with couch, and you get charged for cross-zone communication on AWS. Best to keep things nearby, physically.
4. MapReduce is still hard
  * Use these on Couch instead!
  * Mango (similar to mongodb search)
    * Post a json to the database, it returns
    * and it will tell you if it searched everything (and let you know if you should add an index)
  * Full text search (via Lucene)
  * Geospatial search
5. Attachments!
  * Huge attachments make performance issues, in particular in the event of replication
  * "You wouldn't store video files as BLOBs in Oracle, would you?"
  * Put documents where documents belong in object storage
6. (Ab)using the primary index
  * dont put the doc type in the ```_id```
  * partial indexes are a better choice
  * basically don't put index fields where they don't belong
7. Deleting Documents
  * people trying to use CouchDB as a messaging queue
    * y u do dis
  * use it for what it's designed for!
  * deletions in couch are semi-soft deletes
    * record is kept that a doc ```_id``` has been deleted, in the event of replication from another node, then the tombstone record will indicate that doc no longer exists, which itself will replicate back to original node
  * alternatives:
    * make different databases for different periods of time
    * filtered replication: https://github.com/neighbourhoodie/couchdb-continuum
      * remove records periodically and switch client app to clean db as well
    * use an actual message queue
8. Conflicts on write
  * 2 people write same document simultaneously, but write different things
  * 2 nodes have different versions, third node gets replicated with both and gets a conflict
  * or 2 nodes write to one another and get conflict
  * ultimately it comes to speed - whichever version writes to majority of nodes first arbitrarily wins
  * 201 response vs. 202 response mean dramatically different things - handle accordingly
9. Counting with ```_rev/seq``` 
  * not familiar with this
  * "eventually consistent"
10. I don't bother monitoring Couch because it's reliable
  * always monitor. always.
  * use http://my-netdata.io for monitoring RAM and CPU usage
  * or datadog
  * or DIY with ```GET /_node/_local/_stats``` and ```GET /_node/_local/_system```

## TODO
* try this out! seems cool, esp with HTTP calls already being present
* read up on consistency vs. reliability vs. availability guarantees across different databases
  * probably a good book around here somewhere