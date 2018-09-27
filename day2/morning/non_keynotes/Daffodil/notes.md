# DFDL - Data Format Description Language

* Mike Beckerle, Tresys Technology
* Parse data into XML/JSON using DFDL

## Motivation
* Hundreds of data formats exist already, many are incompatible with one another
* XML, JSON, parquet, orc, etc.
* Customers are locked into a single format depending on the product they use
* Cybersecurity
  * Just because a file says it's a JPEG doesn't mean it actually is
    * Need something to break apart and rebuild these files for security
    * Validate they are what they say they are
* Lots of developers for XML/JSON, but not so many for legacy formats like Link16, VMF, USMTF, COBOL, FINSERV
  * If you can use DFDL to get these into a format you're comfortable with, makes you more flexible

## Tech itself
* New open standard
* Work began in 2001, accelerate in 2008
* Major contributors from UK, Canada, USA
* First implementation from IBM in 2011
```This is a means *to describe data formats*, but is not a data format itself```
* Not necessarily a means to convert. Think I need to do examples to understand better.

## Example
* Delimited text data
```rlimit=5;rpngx=-7.1E8```
* DFDL Properties describe the format
* In this case a string of len limit 5, value is an int (?)

## History
* Runs in Scala on Java JVM
* Further developed by Tresys, funded by US DoD, Canada DND
* Open source from the start
* Now on version 2.2
* Usable as a CLI 
* Parse XML/JSON
* **User TDML for testing and tutorial**

## Integrations
* Spark, NiFi
* Various non-apache

## Conclusion
* Reduce time spent on data intake problem by making this more flexible
* Use schemas from github DFDL Schemas
