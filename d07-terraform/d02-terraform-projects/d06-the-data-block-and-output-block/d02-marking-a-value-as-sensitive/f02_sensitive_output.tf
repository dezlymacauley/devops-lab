output "github_username" {
  description = "My Github username"
  value       = "dezly_macauley"
}

output "my_top_secret_code" {
  description = "My top secret code"
  value       = "A value, that should not be in plain text in a .tf file"
  sensitive = true
}
#______________________________________________________________________________

# EXAMPLE: 1 => terraform apply

# If you run `terraform apply` you'll see this at the end

# Outputs:
# github_username = "dezly_macauley"
# my_top_secret_code = <sensitive>

#______________________________________________________________________________

# EXAMPLE: 2 => terraform output

# If you run `terraform output` to print out all the output blocks,
# you'll see this at the end:

# github_username = "dezly_macauley"
# my_top_secret_code = <sensitive>
#______________________________________________________________________________

# EXAMPLE: 3 => terraform output name_of_output_block

# If you run `terraform output my_top_secret_code` you'll see the actual
# value because you are explicitly telling Terraform to show it to you:
# "A sensitive value, that shouldn't be in plain text in a .tf file"
#______________________________________________________________________________
