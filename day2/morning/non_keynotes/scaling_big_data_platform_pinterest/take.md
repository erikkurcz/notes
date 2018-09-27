* we should explore this means of deployment further and test
  * might not be best solution because scale difference is huge. they're scaled way above where we might need to, but best practices exist
  * usecase also slightly different as they are dept of engineers deploying jobs for products, 
* we already have libraries for calling various services
  * implement them as code
  * when we have a stock job, can have means to edit critical pieces if frequently reused
* Airflow / Pinball / Luigi all similar, give them a try if we want to scale up pipeline development
  * still would require code review and governance over python
  * customized rules could be managed using engine, classes would refer to other code for managing flow of each job itself