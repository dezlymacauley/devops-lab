# SECTION: 1 => Get the AMI

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ami

# AMI stands for "Amazon Machine Image"

# This is a template that AWS uses to install the operating system on the
# virtual machine that you are renting.

# In this example, 
# I want to install version 22.04 of the Ubuntu operating system,
# which is a type of Linux operating system.

# This is one of the most installed operating systems on AWS virtual machines. 

data "aws_ami" "ubuntu" {
  # most_recent = true
  #
  # filter {
  #   name   = "name"
  #   values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  # }
  #
  # filter {
  #   name   = "virtualization-type"
  #   values = ["hvm"]
  # }
  #
  # owners = ["099720109477"] 
}

output "aws_ami_ubuntu" {
  value = data.aws_ami.ubuntu 
}

# resource "aws_instance" "example" {
#   ami           = data.aws_ami.latest_ubuntu.id
#   instance_type = "t3.micro"
# }

#______________________________________________________________________________

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

# resource "aws_instance" "from_count" {
#   count = var.number_of_virtual_machines
# }
