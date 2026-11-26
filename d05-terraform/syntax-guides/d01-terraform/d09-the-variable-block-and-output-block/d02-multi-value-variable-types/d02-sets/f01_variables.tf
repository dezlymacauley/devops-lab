variable "private_subnet_ids" {
  type    = set(string)
  default = ["subnet-a", "subnet-b", "subnet-b"]
}
#______________________________________________________________________________

output "private_subnet_ids" {
  value = var.private_subnet_ids
}

# If you run these commands:
# terrform init
# terraform apply -auto-approve
# terraform output 

# You should get back the default values:
# private_subnet_ids = toset([
#   "subnet-a",
#   "subnet-b",
# ])

# NOTE: A set is a list of unique values.

#______________________________________________________________________________
