# Day 0: Spark + Scala

## Background:
- In memory
- Largest open source project 
- Began in 2009 at UC Berkley
- Motivation: 
  * Bring into memory instead of reading off disk
  * Interactive queries, batch, real time all included
  * APIs for python, java, scala, R etc.
    * That said: whole thing is written in scala, so best to use scala for most commands 
    * Any python code is intepreted to Java and then run, so added layer slows things down
    * Of note: Scala is statically typed

## More on Scala:
- Val / Var
  * Val --> immutable
    * val hello = "hello"
    * hello += " world" // this will NOT work
  * Var --> mutable
    * var hello = "hello"
    * hello += " world" // this will work
  * Difference: thread safety


