# Creating an AWS `Root User` account
_______________________________________________________________________________

- First, you need a bank card with more than 1 USD
- It's fine if the bank card has already been linked to an 
existing AWS account.

- Second, you need an email account.
This must be an account that has never been used to sign up for AWS.

- Third, you also need a phone number.  
- It's fine if the phone number has already been linked to an 
existing AWS account.

- And last but not least, you must not have any active 
AWS free tier accounts. You are only allowed to have 1 active AWS 
free tier account.
_______________________________________________________________________________

Go to this link to create an AWS account
```
https://signin.aws.amazon.com/signup?request_type=register
```

#### Note:
- Check sure that `request_type=register` appears at the end of the link

- This is to ensure that you are signing up for a regular AWS account,
and not an AWS Builder account. 
_______________________________________________________________________________

An example of how to fill in the form

- Root user email address: `ftawsoct2026dezlymacauley@gmail.com`
- AWS account name: `ftawsoct2026dezlymacauley`

- Click `Verify email address`
_______________________________________________________________________________

Create your password

Make sure that you save this password in a password manager so that 
you don't get locked out of your AWS account.
_______________________________________________________________________________

Choose your account plan

Select `Choose free plan`
_______________________________________________________________________________

Enter your contact information and phone number
_______________________________________________________________________________

Enter your bank card details
_______________________________________________________________________________

Confirm your identify. A code will be SMS to the phone number you registed.
_______________________________________________________________________________

Once you are signed into the account, you should see the account name,
and the account ID on the top right:

`ftawsoct2026dezlymacauley (220474267718)`

Account Name: `ftawsoct2026dezlymacauley` 
Account ID: `220474267718` 

Write down the account name and the account ID,
you will need this when setting up MFA (Multi-factor authentication later)
_______________________________________________________________________________

You should see a location next to your account name.

Make sure it's set to `United States (N.Virginia)`,
if you click on the drop down menu, you'll see that the region code for it 
is `us-east-1`.

This is AWS oldest region, and because it's also its flagship region,
new AWS services are always available in this region first.
_______________________________________________________________________________

Click the gear icon that looks like this `⚙️`
_______________________________________________________________________________

Select this option to set the AWS console appearance to dark mode.

- Visual mode: `dark`
_______________________________________________________________________________

Click on your account name on the top right, then click `Account`
_______________________________________________________________________________

Scroll down to `Account display settings`

Select the following options:

Account color: `Green`

I like to set this to `Green` so that I can differentiate my AWS Free Plan
account from my main account, which is purple.
_______________________________________________________________________________

Scroll down to `Contact information`


## Checking that you can log back in
_______________________________________________________________________________

Sign out of the account
_______________________________________________________________________________

Go to this page
```
https://aws.amazon.com/
```
_______________________________________________________________________________

Click `Sign in to console`
_______________________________________________________________________________

Click `IAM user`
_______________________________________________________________________________

Click `Sign in using root user email`
_______________________________________________________________________________

Select `Root user` and enter the email
```
ftawsoct2026dezlymacauley@gmail.com
```
_______________________________________________________________________________

Enter your password
_______________________________________________________________________________

When prompted to setup MFA, click `Skip for now`
_______________________________________________________________________________
