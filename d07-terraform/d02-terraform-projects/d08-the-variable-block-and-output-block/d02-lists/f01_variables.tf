# SECTION: 1 => Complex Variable types

variable "allowed_computer_types" {
  description = "The AWS EC2 instances can be selected for this project"
  type        = list(string)

  # https://aws.amazon.com/ec2/instance-types/t3/

  # Each item in the list can be accessed via its index 
  # The first element in the list is alway `index 0`

  # Indexes:     0           1
  default = ["t3.micro", "t3.small"]
}
#______________________________________________________________________________

# SECTION: 2 => Printing the values

output "allowed_computer_types" {
  value = var.allowed_computer_types
}

# If you run these commands:
# terrform init
# terraform apply -auto-approve
# terraform output 

# You should get back the default values:
# allowed_computer_types = tolist([
#   "t3.micro",
#   "t3.small",
# ])
#______________________________________________________________________________
