## Community, Code, and Culture

* Rafael Weingaertner
* Community, code, culture
  * Human tendency is to stay the same
    * E.g. always using '@' for tagging
    * e.g. simply adding the 10th condition to an If block instead of rethinking how a test is done
      * which causes issue of testing since there are 10! combinations to test!
    * Often the result of not understanding root of how some code works - need to know why
  * Shaping community is based on clarity of rules, not on what they actually say
    * Does the community want tests?
    * Does the community want documentation?
    * What is the minimum quality bar for a PR?
    * These all should be clearly defined. Doesn't matter what the rule actually is, just matters that they are clear.
    * **When should docs be written?** Per Rafael, both before and after code is written
      * Can check what original goal for code was as reference point, see how it evolves
      * Keeps goals distinct
* Overview of testing methods
```
                         Matrix of Tests
Fast execution |                            unit
               |
               |           component
               |            	   integration	 
               |  API
Slow execution |___________________________________
                Low Effort              High Effort
```
  * Why not unittest?
    * Required refactoring
    * Developer time is more expensive than computer time, so it will cost more to maintain
  * Why use more tests?
    * More attractive project
    * **Improves structure of code be requiring separation of duties by functions**
    * Help newcomers - no need for them to figure out how stuff works when there are examples
    * Easier extensions and bug fixes since deliverables from each function are defined
      * only need to test components that have a fix PR requested, not entire system
      * and for a system like cloudstack, it can take 7-10 hours to run *just the tests*
    * Faster PR cycle
* Conclusion
  * Breaks happen. it's fine. this is fine.
  * code quality should be open discussion with clear and distinct requirements, whatever they may be
  * testing can enable quality
  * attract contributors by quality of code

* Q&A
  * Templated PRs for required info can be a help - also a burden if overly specific
  * Examples of proper tests on dummy code could help those new to contributing figure out what's required
  * Structure code properly to make testing easy - maybe classes + decorators so tests are defined on compile rather than explicitly in the code. Decorators specifically make standardized tests across all subclasses or funcs easy.
  * There are different means to do this for different organizations - figure out what works best for you