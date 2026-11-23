# SECTION: 1 => Single value data types

variable "project_name" {
  type        = string
  description = "Name of the project"
  default     = "cyberpunk"
}

variable "number_of_computers" {
  type        = number
  description = "The number of computers running the infastructure"
  default     = 4
}

variable "is_production" {
  type        = bool
  description = "Toggles setting for production or development"
  default     = false
}
#______________________________________________________________________________

output "project_name" {
  value = var.project_name
}

output "number_of_computers" {
  value = var.number_of_computers
}

output "is_production" {
  value = var.is_production
}

#______________________________________________________________________________

# SECTION: 3 => How to print out the values of all `output` blocks

# First ensure that your Terraform state is updated:
# terraform apply -auto-approve

# Run this command:
# terraform output
#______________________________________________________________________________

# You should get this back the default values

/*

is_production = false
number_of_computers = 4
project_name = "cyberpunk"

*/

# If you want to print out a speficic variable
# terraform output `project_name` 

# You will get back this default value:
# "cyberpunk"
#______________________________________________________________________________

# SECTION: 3 => How to override the default values


#______________________________________________________________________________
