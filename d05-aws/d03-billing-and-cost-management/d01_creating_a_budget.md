# Creating a budget
_______________________________________________________________________________

Login using the `AWS Root Account` user
_______________________________________________________________________________

Search for `Billing and Cost Management`
_______________________________________________________________________________

If you are using `free plan account`, you should see this:
```
Your free plan account does not get charged
Credits cover your free plan costs. 
Your free access to AWS services will end when your free plan period expires 
or when you have depleted all credits.

Credits remaining
    $100.00 USD

Days remaining
    183 days
```

However even if you are using a `free plan account`, 
its worthwhile to know how to set a budget.
_______________________________________________________________________________

For this guide I'll be creating a monthly budget for an AWS free plan account
that has `$100`.

- The free plan account expires after 183 days

- Every month in a year has at least 28 days.

- So.. 183 days / 28 days = 6.535714285714286

- Remove the decimal part without any rounding up or down, 
and you get 6 months.

_______________________________________________________________________________

- So I need `$100` to last for 6 months.

- So... $100 / 6 months = $16.666666666666668

- Remove the decimal part without any rounding up or down, 
and you get $16

- So if I set a budget of `$15`, which is $1 below that.

- $15 * 6 months = $90

- That keeps me under the $100 amount and with a breathing room of $10 
_______________________________________________________________________________

On the left side bar, look for `Budgets and Planning`
then click `Budgets`
_______________________________________________________________________________

Click `Create a budget`
_______________________________________________________________________________


Select the following options:

- Budget setup: `Use a template (simplified)`
- Templates: `Monthly cost budget`
- Budget Name: `monthly-cost-budget` 
- Email recipients: `ftawsoct2026dezlymacauley@gmail.com`
_______________________________________________________________________________

Click `Create Budget`
_______________________________________________________________________________

After creating the budget, click on the name of the budget

Then select the Email recipients, then click `Send Verifications`
_______________________________________________________________________________
