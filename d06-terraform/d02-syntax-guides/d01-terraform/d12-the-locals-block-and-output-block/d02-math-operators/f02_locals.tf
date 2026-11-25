# SECTION: 1 => How to declare a single `local`

locals {
  # Addition
  result_a = 1 + 2

  # Subtraction
  result_b = 8 - 4

  # Multiplication
  result_c = 5 * 2

  # Division 
  result_d = 6 / 3
}

#______________________________________________________________________________

# SECTION: 2 => How to print out a single `local` value

output "result_a" {
  value = local.result_a
}

# You'll get this output:
# result_a = 3
#______________________________________________________________________________

# SECTION: 2 => How to print out multiple `local` values

output "results_a_to_d" {
  value = {
    result_a = local.result_a
    result_b = local.result_b
    result_c = local.result_c
    result_d = local.result_d
  }
}

/*

results_a_to_d = {
  "result_a" = 3
  "result_b" = 4
  "result_c" = 10
  "result_d" = 2
}

*/
#______________________________________________________________________________
