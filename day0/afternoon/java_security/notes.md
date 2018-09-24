# Security

## Multiple ways to protect yourself, among them:
* Principle of Privilege 
  * Only those with certain roles can access certain things
* Layers of security at each point
  * One layer fails, another picks up the slack
  * Think of having:
    * Fence around whole house
    * Deadbolt on front door
    * Locks in each room
    * All with differnet keys
    * Lock on a safe
    * Sections within the safe, also auth'd
* DB security itself - restricted operations on user
* Role-Based Access Control
  * RBAC INCITS 359 Specification, which has multiple roles
  * RBAC0: Users, Roles, Perms, Sessions
  * RBAC1: hierarchical roles
  * RBAC2: static separation of duties
    * Someone can never self-approve their own request, for example
  * RBAC3: dynamic separation of duties

## Apache Fortress
