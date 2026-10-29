_______________________________________________________________________________

Search for the `IAM` service
_______________________________________________________________________________

Look for `Access Management` and select `Policies`
_______________________________________________________________________________

If you select a policy like `AdministratorAccess` and click `JSON`,
you will be able to see the policy in JSON format.

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
```

_______________________________________________________________________________

This part means "Allow the user to perform any action on any AWS resource"
```
"Effect": "Allow",
"Action": "*",
"Resource": "*"
```
_______________________________________________________________________________
