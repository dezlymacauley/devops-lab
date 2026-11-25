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

# STEP: 2 => Using `count` to create multiple subnets

# The reason why I named this `subnet` is because when you use the `count`
# setting inside a resource block 
resource "aws_subnet" "subnet" {
  # This specifies how many resources you want to create.
  count = 2
  vpc_id = aws_vpc.main_vpc.id

  # `count.index` returns and number starting from 0,
  # for each resource created.
  
  # E.g. In this example, `count = 2`


  cidr_block = "10.0.${count.index}.0/24"

  tags = {
    ProjectName = local.project_name
    Name = "${local.project_name}-subnet-${count.index}"
  }
}
#______________________________________________________________________________
