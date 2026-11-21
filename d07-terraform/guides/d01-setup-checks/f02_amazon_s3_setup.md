# Amazon S3 Setup
_______________________________________________________________________________

Search for `S3`

Click `Create bucket`

Select the following options:

Bucket type: `General Purpose`

Bucket namespace: `Global Namespace`

Bucket name: `devops-lab-aws-eks-4bed305c`

#### Note: 
- Ensure that the bucket name matches  
- The bucket name must be between 3 to 63 characters 
and must be unique accross AWS. 
- So you normally add a bunch of random number to the end of bucket name
to ensure that no other AWS account in the world has this bucket name.

Object ownership: `ACLs disabled (Recommended)`

Block all public acess: `Ensure that this is checked`

Bucket versioning: `Enable`

Tags:
- Key: `managed_by`, Value: `aws_console`
- Key: `devops_lab`, Value: `amazon_eks`

Encryption type: `Server-side encryption with Amazon S3 managed keys (SSE-S3)`

Bucket key: `Enable`
_______________________________________________________________________________
