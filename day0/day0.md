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
- Most of this is from simplySyntaxExamples.scala
- Val / Var
  * Val --> immutable
    * val hello = "hello"
    * hello += " world" // this will NOT work
  * Var --> mutable
    * var hello = "hello"
    * hello += " world" // this will work
  * Difference: thread safety
- Map operation
'''
var v = 1 to 5
v.map(_ + 1) // adds 1 to all in the 1 to 5 variable BUT DOES NOT update original object. need to use assignment for that
var newv = v.map(_ + 1)
```
- Map object
```
val map1 = Map((1,"a"),(2,"b"))
val map2 = Map((3 -> "c"))
var map3 = map1 ++ map 2
```
- Functions are first class citizens (same as python here)

`val addOne = (n: Int) => n + 1 // def lambda that takes int n returns n + 1`

  * applying this:
```
newv.apply(addOne)
newv.apply(n => addOne(n))
```
- Processing Collections
  * Can use dot-notation to chain commands
```
{
(1 to 5000)
.filter(x => x > 400)
.take(5).
foreach(x => println("x: "+x))
}
```
  * Alternatively:
```
(1 to 5000) filter(x => x > 400) take(5) foreach(x => println("x: "+x))
```
