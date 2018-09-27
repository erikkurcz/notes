# Learning Solr

Alexandre Rafalovitch / From content to search: speed-dating Apache Solr
* Use the reference guide. 1250 pages of goodness
* Printed books are good but cannot keep up

## Minimal Config For Learning
* 1 server, 1 collection
* Minimal schema
* All defaults config
* But be aware, this can scale to many servers and zookeeper, many collections with shards, replicas, full config, etc
* Setting up server
  * make an empty directory called ```sroot``` (or something)
  * start from the bin, starts up on port 8983
  * need 2 files for this:
    * an XML schema
    * and a solrconfig.xml with endpoints, params, caches, etc
* Create collection core
  * ```bin/solr create -c dip -d .../minimal```
  * collection/core name is ```dip```
  * 3 config files are in ```.../minimal```
* Index the content
  * ```bin/post -c dip -params "separator=%09" -type "text/csv" .../dip-data.tsv```
  * and you're ready for search!
  * localhost:8983 takes you to the UI

## Why does this all work?
* Definition of managed schema is really how you change how the search works
* Lowercase searching, tokenizing, etc --> all handled in conf
* Design of schemas and config depends mostly on how you'd like to search the data itself. Best to work backwards from the desired query to define the schema.
* Some of this can be done via the UI - very helpful
  * command line also works the same

## Adjusting data on read
* On import can define steps to take to normalize data, replace things, trim extra space, splitting text, change types, etc
* Depending on case, this could be done ahead of time with normalization process before read into Solr, or if mostly just providing search capability, done here
* All this takes place in XML config files

## Resources
* https://github.com/arafalov/solr-apachecon2018-presentation 
* Docs, of course