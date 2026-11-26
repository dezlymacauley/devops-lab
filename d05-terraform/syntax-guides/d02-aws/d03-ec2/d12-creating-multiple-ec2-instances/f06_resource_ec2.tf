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

  # Ubuntu AMIs are published by a company called `Canonical`
  # The number 099720109477 is their AWS account Id
  # This ensures that the search results only include official Ubuntu AMIs
  # and not third-party Ubuntu AMIs
  owners = [ "099720109477"]

  # This tells Terraform to only return the most reccent Ubuntu AMI
  most_recent = true
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
