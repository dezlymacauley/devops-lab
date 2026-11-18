# Setup Guide
_______________________________________________________________________________

Check that you have the commands `kubectl`, `terraform`, and `aws`

```bash
kubectl version --client
terraform --version
aws --version
```
_______________________________________________________________________________

Add the correct values to your `.env` file
_______________________________________________________________________________

Run this command to check if you are able to connect to AWS,
and that you are using the correct AWS user, run this command
```bash
aws sts get-caller-identity
```
_______________________________________________________________________________

Create an s3 Bucket that will be used to store the Terraform state file of
your project using the AWS console

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
to ensure that no other AWS account in the world has this bucket name
- Ensure that this the bucket name is the same as the value for 
`AWS_S3_BUCKET_FOR_TERRAFORM_STATE` in the `.env` file of your project.

Object ownership: `ACLs disabled (Recommended)`

Block all public acess: `Ensure that this is checked`

Bucket versioning: `Enable`

Tags:
- Key: `managed_by`, Value: `aws_console`
- Key: `project_name`, Value: `devops_lab_amazon_eks`

Encryption type: `Server-side encryption with Amazon S3 managed keys (SSE-S3)`
_______________________________________________________________________________

## Todo (Don't execute yet)
To initialiaze the project:
cd terraform-files
setup
_______________________________________________________________________________
