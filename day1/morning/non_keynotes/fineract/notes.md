# Open Banking & Open Source
Ed Cable & Myrle Krantz / mifos.org / fineract.apache.org

## Selling the idea of open source to financial organizations
* Goal is to eliminate poverty by opening digital financial services to un/under-banked
* 300+ institutions in 41 counties using software, 10 million clients
* Launched in 2006 as first open-source, web-based MIS platform
* Recession caused soul-searching in industry / rethinking both in lending standards and in underlying technology
* Now on 3rd generation, focusing on building a *framework* rather than platform itself
  * Fineract **C**loud **N**ative is current software as framework
  * Do offer platform itself
* Challenges with growing community, joined ASF thereafter to gain traction
* Offering is now a suite of apps
* "Commoditization of Financial Services Systems"
* SAP not necessary if you can just use this with MySQL + a front end
  * Makes challenge of starting a bank less so if infrastructure is already built out
  * Though obviously regulatory concerns still come into play
* Integrates with Pentaho, other BI engines, accounting packages

## Goals
* Most banks focusing on opening up anonymized data access for ML etc
* Goal here is to take it a step further - get into the credit decisions, predictive analytics and be able to make changes / customize your banking offering
  * Changing algos and structure of how lending decisions are made can be open

## Case Studies

1. Nigeria - Mines.io
  * 200 million people, 70% of adults are underbanked
  * Mines is offering banking on mobile, non-smartphones
  * Utilized Apache Fineract to build out and integrate their own in-memory DB
  * Applying for a loan can be done via text or webapp, data on AWS
  * Launched in 2017, closed $13 series A 
  * *1 million customers* (already!), 1,000 new loans per day, aiming for 10,000 loans per day
  * Scaling to SE Asia, Latin America
2. Mexico - Gentera
  * 60% of Mexicans do not have a banking account
  * 90% of transactions are in cash
  * 6 million merchants do not accept electronic payment at all
  * Didn't want to deal with year-long requests for tech change with SAP, went to DIY it
  * Shortened development cycles to 1 week
  * Notable: did not replace entire stack
    * Switched to Fineract for loan admin and reporting, kept SAP for savings administration
3. Germany - Erste Financial Services
  * Bank restructuring post-recession
  * CEO of one of those banks needed to cut operational costs from $900M to $700M/year
  * Migrated mortgage loan portfolios to Fineract
  * Surprisingly, IT staff was the hardest sell in this case - most devs were used to waterfall approach
4. India - Novopay
  * Biometrically identified 1.2 Billion people as auth for their bank
  * Market: 100M adults, 70% un/under-banked
  * Company: 2.1M unique customers, $124M in transaction volume in *just April 2018*, or annualized at $1.5B
  * *They scaled to a billion USD of transactions in a year.*

## Lessons Learned in selling open source
* Do:
  * Talk about culture, and grow it
  * Explain *how* not *why* this lowers cost of innovation
  * Engineer for scalability
  * Integrate into user community early - be responsive on mailing lists
* Don't:
  * Force customer to do it alone - be a partner!
  * Confuse OSS with free - notorious misunderstanding
  * Let architecture get stagnant
  * Say yes to everything. Focus on deals that can work, not those that are a too big a lift.

## Q&A
* How to handle fraud?
  * Absolutely a concern, integrate components of ML / AI specifically for this where necessary. Not exactly our bread and butter to develop these in house, but plenty of solutions exist, often from ASF itself. Need to maintain focus on core offering and what we do best which is more on infrastructure / front end.
