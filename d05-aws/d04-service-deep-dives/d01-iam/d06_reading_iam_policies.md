# Reading IAM Policies 
_______________________________________________________________________________

Search for the `IAM` service
_______________________________________________________________________________

Look for `Access Management` and select `Policies`
_______________________________________________________________________________

## Example 1

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

This part means "Allow the user to perform any action on any AWS resource.

Or to be more technical, "Allow the user to make API calls to any AWS service"

```
"Effect": "Allow",
"Action": "*",
"Resource": "*"
```
_______________________________________________________________________________

## Example 2 `IAMReadOnlyAccess`

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "iam:GenerateCredentialReport",
                "iam:GenerateServiceLastAccessedDetails",
                "iam:Get*",
                "iam:List*",
                "iam:SimulateCustomPolicy",
                "iam:SimulatePrincipalPolicy"
            ],
            "Resource": "*"
        }
    ]
}
```
_______________________________________________________________________________
