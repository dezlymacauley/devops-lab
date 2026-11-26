variable "number_of_aws_virtual_machines" {
  description = "The number of AWS virtual machines (EC2 instances) to rent"
  type    = number
  default = 1
}

output "number_of_aws_virtual_machines" {
  value = var.number_of_aws_virtual_machines
}
