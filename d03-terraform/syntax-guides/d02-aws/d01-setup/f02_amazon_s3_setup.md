# Amazon S3 Setup
_______________________________________________________________________________

Login to to the AWS console, and seach for `S3`
_______________________________________________________________________________

Ensure that the AWS region is matches the value of the `AWS_REGION` variable
in your `.env` file

I prefer to set mine to `us-east-1` because this is the region that is always
the first to get access to the latest AI/ML services released by AWS.
_______________________________________________________________________________

Click `Create bucket`
_______________________________________________________________________________

### General configuration

Select the following options:
- Bucket type: `General Purpose`
- Bucket namespace: `Account Regional namespace (recommended)`
- Bucket name prefix: `devops-lab`

#### Note: 
- Underscores are not supported for an S3 bucket name, so use hyphens.
- The bucket name must be between 3 to 63 characters 
- This name must not be the same as any other s3 bucket. 
- Even if that bucket exists in another AWS account.

AWS will add and account Regional namespace suffix like this,
using your AWS account number and the current AWS region on the AWS console,
followed by `an`
`-220474267718-us-east-1-an`

So the full bucket name will be something like this:
```
devops-lab-220474267718-us-east-1-an
```
_______________________________________________________________________________

### Object Ownership

Select the following options:
- Object ownership: `ACLs disabled (Recommended)`
_______________________________________________________________________________

### Block Public Access settings for this bucket

Select the following options:
- Block all public acess: `Ensure that this is checked`
_______________________________________________________________________________

### Bucket Versioning

Select the following options:
- Bucket versioning: `Enabled`

#### Note:
- For simple projects or practing Terraform syntax,
you can set this to `Disable`
_______________________________________________________________________________

### Tags - optional

While this is marked optional, 
I prefer to add tags to all AWS resource whenever I'm given the option.

Create the following tags:

Tags:
- Key: `CreatedUsing`, Value: `aws-console`
- Key: `ProjectName`, Value: `devops-lab`

#### Note:
- Use `PascalCase` when creating a key, and `kebab-case` for the values.
_______________________________________________________________________________

### Default encryption

Select the following options:
- Encryption type: `Server-side encryption with Amazon S3 managed keys (SSE-S3)`
- Bucket Key: `Enable`
_______________________________________________________________________________
