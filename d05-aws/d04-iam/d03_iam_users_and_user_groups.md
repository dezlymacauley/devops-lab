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

This is a functionality

_______________________________________________________________________________
