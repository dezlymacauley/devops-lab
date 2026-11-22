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
  default     = true
}
#______________________________________________________________________________
