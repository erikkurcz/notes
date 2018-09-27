# Accessing your data in different formats

Owen O'Malley / Hortonworks, co-founder

## Avro & JSON
* row based

## ORC
* columnar
* works well with timestamp columns since epoch is 1/1/2015 rather than 1/1/1970

## Parquet
* Based on google's Dremel paper
* columnar
* similar to ORC

## NYC Taxi Data
* 18 Cols with no nulls
* Doubles, ints, decimals, strings
  * Doubles: GPS coordinate (it's an estimate)
  * Decimals: Price (exact amounts)
* 2 months of data is 22.7 M rows

## Sales data
* see slides

## Github logs
* all actions on github on public repos
* 704 columns, lots of structure and nulls
* 2 weeks = 10M rows

## Storage Costs
* end of the day, this is what matters even if storage generally is cheap
* NYC Taxi Data
  * massive difference in size depending on format used and compression type
  * JSON with no compression --> repeatedly stores column names, unnecessarily
  * Use snappy or zlib compression
* Sales data
  * ORC did best, and at that, better than expected
  * no doubles in dataset
* Github Dataset
  * Json without compression again did worst
  * Column compression doesn't compress as well when there are many cols (and there are 704 in this dataset)
  * interestingly, JSON & AVRO uncompressed are worst, but turn to best when used with zlib

**Can't guarantee accuracy of below notes, see slides for accurate indications on performance**

## Full Table Scans
* Read all cols and rows
* All formats except json are splittable - diff workers for diff parts of file 
* JSON with none did worst in reading NYC Taxi as it does a lot of string parsing, Parquet better for this since column types known
* parquet did worst for Github read performance - lots of columns but lots of nulls. JSON did best here.

## Column Projection
* often just need to read a few columns
* ORC/Parquet should do best on this type of work
* across datasets ORC did best - Parquet had issues with Github dataset

## Predicate Pushdown
* He is going really fast through this
* Parquet only worked part of the time on this - pushdown not available on timestamp in spark engine with parquet files. Use ORC instead.

## Metadata Access
* ORC/Parquet store metadata in footer of file - very useful

## Misc 
* Bloom filters very useful depending on use case

https://www.slideshare.net/oom65/fast-spark-access-to-your-complex-data-avro-json-orc-and-parquet