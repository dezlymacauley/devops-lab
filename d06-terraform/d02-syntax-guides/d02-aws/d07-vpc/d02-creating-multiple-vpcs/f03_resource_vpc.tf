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
    # The name of the VPC will be: devops-lab-main-vpc
    Name = "${local.project_name}-main-vpc"
  }

}
#______________________________________________________________________________

# STEP: 2 => Using `count` to create multiple subnets

# The reason why I named this `subnet` is because when you use the `count`
# setting inside a resource block the name will be prefixed with a number,
# startin from 0

# E.g. In this example count is 2:
# This means 2 subnets will be created
# The first subnet will be `aws_subnet.subnet[0]` 
# The second subnet will be `aws_subnet.subnet[1]` 
resource "aws_subnet" "subnet" {
  # This specifies how many resources you want to create.
  count  = 2
  vpc_id = aws_vpc.main_vpc.id

  # `count.index` returns and number starting from 0,
  # for each resource created.

  # E.g. In this example, `count = 2`
  # The cidr_block of the first subnet will be: 10.0.`0`.0/24
  # The cidr_block of the second subnet will be: 10.0.`1`.0/24
  cidr_block = "10.0.${count.index}.0/24"

  tags = {
    ProjectName = local.project_name

    # E.g. In this example, `count = 2`
    # The Name of the first subnet will be: devops-lab-subnet-0
    # The Name of the second subnet will be: devops-lab-subnet-1
    Name = "${local.project_name}-subnet-${count.index}"
  }
}
#______________________________________________________________________________
