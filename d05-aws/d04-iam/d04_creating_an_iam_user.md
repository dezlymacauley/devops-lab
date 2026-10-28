# Creating an IAM User
_______________________________________________________________________________

Login as the AWS Root User
_______________________________________________________________________________

Search for the `IAM` service
_______________________________________________________________________________

## Step 1: Create an `IAM User Group` that the `IAM` user will be part of
_______________________________________________________________________________

Look for `Access Management` on the side bar, then click `IAM user groups`
_______________________________________________________________________________

Click `Create group`
_______________________________________________________________________________

For this example, I'm going to create a group called `aws-account-admins`.

This group will be for IAM Users that need to perform administrative tasks
on the IAM account.
_______________________________________________________________________________

Select these options:

- User group name: `aws-account-admins`
_______________________________________________________________________________

Attach permissions policies:

Select the following policies:
- `Administrator Access`
_______________________________________________________________________________

Click `Create user group`
_______________________________________________________________________________

## Step 2: Create an `IAM User ` 

Look for `Access Management` on the side bar, then click `IAM users`
Click `Create user`

_______________________________________________________________________________

Click `Create user`
_______________________________________________________________________________

E.g. 
- User name: `dezly`
- Provide user access to the AWS Management Console `Select this option`

- Console password `Custom password`

- Save the User name, and password to a password manager.

- Users must create a new password at next sign-in: `Uncheck this`

#### Note:
- Each IAM user in the account must have the same name.
_______________________________________________________________________________

Click `next`
_______________________________________________________________________________
