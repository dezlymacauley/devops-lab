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

AWS will add and account Regional namespace suffix like this:
`-220474267718-us-east-1-an`

So the full bucket name will be:
```
devops-lab-220474267718-us-east-1-an
```
_______________________________________________________________________________

### Object Ownership

Select the following options:
- Object ownership: `ACLs disabled (Recommended)`
- Block all public acess: `Ensure that this is checked`
- Bucket versioning: `Enable`
_______________________________________________________________________________

Tags:
- Key: `managed_by`, Value: `aws_console`
- Key: `devops_lab`, Value: `amazon_eks`

Encryption type: `Server-side encryption with Amazon S3 managed keys (SSE-S3)`

Bucket key: `Enable`
_______________________________________________________________________________
