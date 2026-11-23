# SECTION: 1 => Single value data types

variable "tfvars_file_path" {
  type        = string
  description = <<-EOT
    This is the file path for the `.tfvars` file 
    that will be used to override the default values
    of variables declared in this file.
  EOT
  default     = "tfvars-files/dev.tfvars"
}

variable "project_name" {
  type        = string
  description = "Name of the project"
  default     = "cyberpunk"
}

variable "top_3_tech" {
  type = string

  # This is how you add a multi-string description in Terraform
  description = <<-EOT
    The top 3 technologies that power the application.
    This refers to:
    1. The backend framework
    2. The database  
    3. The frontend framework 
  EOT
  default     = "Axum, Postgres, SvelteKit"
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

output "top_3_tech" {
  value = var.top_3_tech
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

# SECTION: => How to override the default values

#______________________________________________________________________________

# EXAMPLE: 1 => Add the values to your `.env` file

# First add the variables to your .env file like this:
# You must use the syntax: `TF_VARS_name_of_variable`

/*

TF_VAR_project_name="arasaka"
TF_VAR_top_3_tech="Python, Postgres, Astro"
TF_VAR_number_of_computers=6
TF_VAR_is_production=true

*/

# Update your Terraform state:
# terraform apply -auto-approve

# Print out all the output blocks:
# terraform outputs
#______________________________________________________________________________

# EXAMPLE: 2 => Use a `.tfvars` file


#______________________________________________________________________________
