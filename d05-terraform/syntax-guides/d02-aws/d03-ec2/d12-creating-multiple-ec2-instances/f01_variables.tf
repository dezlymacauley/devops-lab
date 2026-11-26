variable "number_of_subnets" {
  description = "The number of subnets in the VPC"
  type        = number
  default     = 2
}

variable "number_of_virtual_machines" {
  type    = number
  default = 1
}
