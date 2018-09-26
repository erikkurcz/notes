# Offline First with CouchDB
Gauravu Saini / Offline-First Expense Manager app with Apache CouchDB

## Apache CouchDB
* Document-oriented NoSQL + REST
* Can replicate to devices when they go offline and handle data sync when they go back online

## Apache *P*ouchDB
* Inspired by CouchDB but for running in browsers
* Stores data using WebSQL and IndexedDB 
* When online, syncs to CouchDB on main server
* When offline, simply stores locally

## Apache Cordova
* Hybrid mobile dev framework for cross-platform apps (android, iOS, windows, etc)
* Used for making the app itself

## Replication
* Need to explore more - either one-way, bi-directional, ad-hoc, or continuous

## Alternative uses
* Offline-first visitor management system
* Each company can have data available offline entirely
* Can store images locally at first as well to be loaded later on
* Obvious limits of storage space - but these apps are designed for temporary outages of service, not extended