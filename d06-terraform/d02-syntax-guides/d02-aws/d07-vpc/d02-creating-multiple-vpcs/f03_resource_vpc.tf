# STEP: 1 => Create the VPC

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc
resource "aws_vpc" "main_vpc" {

  # The smallest CIDR prefix you can set is `/16`
  # The largest CIDR prefix you can set is `/28`
  cidr_block = "10.0.0.0/16"

  tags = {
    # This is regular tag
    ProjectName = local.project_name

    # This is a special tag in AWS that must be named this way.
    # It controls the display name of the VPC on the AWS console
    Name = "${local.project_name}-main-vpc"
  }

}
#______________________________________________________________________________

# STEP: 2 => Create the Subnets

resource "aws_subnet" "subnet_1" {
  vpc_id = aws_vpc.main_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    ProjectName = local.project_name
    Name = "${local.project_name}-subnet-1"
  }
}

resource "aws_subnet" "subnet_2" {
  vpc_id = aws_vpc.main_vpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    ProjectName = local.project_name
    Name = "${local.project_name}-subnet-2"
  }
}
#______________________________________________________________________________
