## Traffic Control

* A system to Build / Monitor / Control CDNs
  * Content Delivery Network for distributed systems across HTTP(S)
* Caches, Routers, Health Protocols, Config Management Tool, Logging Analytics --> all parts of this system
* Difficult problem to solve as there are thousands of servers, billions of transactions per day
* Comcast had previously been a 'buy' kind of company
  * Intended to build instead, for the first time
  * Before they built anything they established design principles
    * Leverage open source, common hardware, industry standards
    * All customer facing parts are IPv4 and IPv6
    * Horizontally scalable, stateless where possible
    * Maintenance and 100% availability
  * Literally test in prod, because at this scale having 20 million people use dev environment is unfeasible
  * *6 people* on a team scaling the CDN from Comcast to Cox and beyond
    * Ack'd that they couldn't do this themselves so open-sourced
    * Did so, but had challenges with Comcast and legal through the process, so donated to ASF and joined incubator
* Scale of this:
  * 35 petabytes per day
    * 1.5 libraries of congress per minute
  * 100 billion transactions/day
* Why ASF?
  * No corpoate CLA, unlike github.com/comcast/trafficcontrol
  * mentorship
  * infrastructure
  * community