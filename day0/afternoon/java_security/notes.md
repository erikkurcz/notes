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

## Apache Fortress Demo
* Gave demo of this whole concept of extremely secure application
* Users might not even have privileges to certain buttons (!)
* When giving out privs, a role creator might only have access to grant access to a single new role in a single session. Will error out with a dynamic Separtion of Duties rule if they try to
* If user tries to just change the url but is not priv'd for access via framework, the next layer of security should stop them from having access
  * He demo'd changing the link itself to get around application higher-level security
* Anecdote on testing security:
  * There was a bug in place for years -- user could enter wrong password and would not be allowed in, as expected. **But if they entered no password, they were allowed in!**

## Why not user RBAC?
* Exploding role problem
* As you increase roles themselves, each user must be priv'd for every little thing
* Becomes difficult and annoying to manage, **only if** you expand roles for new users
* If instead you keep roles small and users large, system works
* Called **ABAC** (Attribute Based Access Control)
* Aka: use generic roles for things, not specific roles for things
* For access to db:
  * One role to give access to application
  * One role for write access
  * Another for read access
  * Another for delete access
  * another for a schema
  * another for a table
  * etc
* Add users to the roles, rather than adapting roles to become:
  * role with access to application that can write, that can read, that can use xyz schema that can use specifically abc table
  * role with access to application that can read, that can use xyz schema that can user specifically def table
  * role with access to application that can read, that can use xyz schema, that can use def table, that can use abc table
  * the above are all extremely specific roles, very difficult to manage
  * Put the complexity on user side of things and they get assigned roles, rather than roles being tailored to user's needs

## Summary
1. Never allow users more privs than their job requires
2. Many layers of security
3. Combine RBAC with ABAC

## Contact
* Twitter: @shawnmckinney
* Blog: iamfortress.net
* Project: https://directory.apache.org/fortress

