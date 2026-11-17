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
your project

```bash
aws s3api create-bucket \
  --bucket "$AWS_S3_BUCKET_FOR_TERRAFORM_STATE" \
  --region "$AWS_DEFAULT_REGION"
```
_______________________________________________________________________________

## Todo
To initialiaze the project:
cd terraform-files
setup
