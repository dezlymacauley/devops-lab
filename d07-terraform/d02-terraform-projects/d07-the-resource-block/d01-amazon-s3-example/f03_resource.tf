# The syntax is:
# resource "type of resource" "A custom name of your choosing."

# You get the value for type of resource from the Terraform docs
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket.html

resource "aws_s3_bucket" "media_uploads" {

  # These tells Terraform that I am naming the s3 bucket using 
  # AWS's recommended `account-regional` namespace format,
  # which AWS uses to ensure that each bucket name on AWS is unique.

  # which follows this naming convention:
  # "bucket name"-"Your AWS account id"-"AWS region"-"an"

  # The `-an` stands for Amazon namespace. 
  bucket_namespace = "account-regional"
  region           = "us-east-1"

  bucket = "media-uploads-220474267718-us-east-1-an"

  tags = {
    Name = "media-uploads-220474267718-us-east-1-an"
  }
}
#______________________________________________________________________________

# NOTE: How to create / update this resource

#______________________________________________________________________________

# STEP: 1 => First check that the HCL syntax in your .tf files is correct

# terraform validate
#______________________________________________________________________________

# STEP: 2 => Then check what Terraform plans to do, based on your config

# terraform plan

# You will see the following information below that shows you all of
# the fields that you can customize when creating this resource.

/*

Terraform used the selected providers to generate the following execution plan. Resource actions are
indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_s3_bucket.media_uploads will be created
  + resource "aws_s3_bucket" "media_uploads" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "media-uploads-220474267718-us-east-1-an"
      + bucket_domain_name          = (known after apply)
      + bucket_namespace            = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_region               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = "us-east-1"
      + request_payer               = (known after apply)
      + tags                        = {
          + "Name" = "media-uploads-220474267718-us-east-1-an"
        }
      + tags_all                    = {
          + "CreatedUsing" = "terraform"
          + "Name"         = "media-uploads-220474267718-us-east-1-an"
          + "ProjectName"  = "devops-lab"
        }
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + cors_rule (known after apply)

      + grant (known after apply)

      + lifecycle_rule (known after apply)

      + logging (known after apply)

      + object_lock_configuration (known after apply)

      + replication_configuration (known after apply)

      + server_side_encryption_configuration (known after apply)

      + versioning (known after apply)

      + website (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.


*/
#______________________________________________________________________________

# STEP: 3 => Create / update all the resources

# terraform apply -auto-approve
#______________________________________________________________________________

# STEP: 4 => To destroy the resource

# terraform destroy

# Then type `yes` and press enter when prompted.
#______________________________________________________________________________
