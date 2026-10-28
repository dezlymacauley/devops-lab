# IAM Users and User Groups
_______________________________________________________________________________

## IAM Users

The AWS root user account lets you control the entire AWS account.

It should be used for administrative tasks like creating an alias for
the AWS account, setting up a budget, and creating IAM User accounts.
_______________________________________________________________________________

Think of an `IAM User` as a sub-account, 
that is within the root user account. 

An `IAM User` account will have less functionality than the Root User account
for security reasons. 

If an unathorized person gets access to the Root User account, 
all of the `IAM Users` in that account are vulnerable. 

The unathorized person can delete these accounts, 
change their settings, passwords, and even create new `IAM Users`.

However if an unathorized user only manages to hack one `IAM User` account,
the Root User account can simply delete that `IAM User`,
or revoke all of permissions that the `IAM User` has.
_______________________________________________________________________________

## IAM User Groups

- This is a functionality that allows you group the IAM Users in your account.
_______________________________________________________________________________

- An `IAM User` can belong to multiple groups.

E.g. 

You can have an `IAM User` called `dezly`,
that is part of the `rust-developers` group, 
and also part of the `mlops-engineers` groups.

You can have an `IAM User` called `cassie` that is part of 
the `database-developer` group.

You can have an `IAM User` called `seth` that is part of 
the `svelte-developer` group.
_______________________________________________________________________________

E.g. 

The main purpose of an IAM user group is that you can disable all permissions  
for the group, and then only enable the permissions 
that the group requires to do their job.

This is called the `least privillage principal`,
you only give the user the least amount of permissions on AWS that they
require to for their functionality.

E.g. `IAM User` called `seth` is in the `svelte-developer` group,
so that user should probably not have permission to delete data that
the MLOps Engineers are working on.
_______________________________________________________________________________
