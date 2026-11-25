# STEP: 1 => Create the VPC

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc
resource "aws_vpc" "main" {

  # The smallest CIDR prefix you can set is `/16`
  # The largest CIDR prefix you can set is `/28`
  cidr_block = "10.0.0.0/16"

  tags = {
    # This is regular tag
    ProjectName = local.project_name

    # This is a special tag in AWS that must be named this way.
    # It controls the display name of the VPC on the AWS console
    Name = local.project_name
  }

}
#______________________________________________________________________________
