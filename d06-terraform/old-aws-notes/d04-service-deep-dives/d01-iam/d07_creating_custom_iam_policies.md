# Creating Custom IAM Policies 
_______________________________________________________________________________

Search for the `IAM` service
_______________________________________________________________________________

Look for `Access Management` and select `Policies`
_______________________________________________________________________________

Click `Create policy`
_______________________________________________________________________________

Click `JSON`
_______________________________________________________________________________

You'll get this as a starting template

```json
{
	"Version": "2012-10-17",
	"Statement": [
		{
			"Sid": "Statement1",
			"Effect": "Allow",
			"Action": [],
			"Resource": []
		}
	]
}
```
_______________________________________________________________________________

However its better to just click `Visual` and use the GUI
_______________________________________________________________________________

After creating the policy, the JSON will be automatically created for you
```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "iam:ListUsers",
                "iam:GetUser"
            ],
            "Resource": "*"
        }
    ]
}
```
_______________________________________________________________________________
