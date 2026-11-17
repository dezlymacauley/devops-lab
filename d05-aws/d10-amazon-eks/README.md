Version check commands

terraform --version

aws --version                                                                                          aws-cli/2.40.3 Python/3.14.8 Linux/7.2.14-arch1-1 exe/x86_64.arch

kubectl version --client


aws s3api create-bucket \
  --bucket "$AWS_S3_BUCKET_FOR_TERRAFORM_STATE" \
  --region "$AWS_DEFAULT_REGION" \
  --create-bucket-configuration LocationConstraint="$AWS_DEFAULT_REGION"

To initialiaze the project:
cd terraform-files
setup
