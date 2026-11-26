locals {
  # This means: 5 `is greater than` 5?
  result_a = 5 > 5

  # This means: 2 `is less than` to 8?
  result_b = 2 < 8

  # This means: 3 `is greater than or equal` to 3?
  result_c = 3 >= 3

  # This means: 7 `is less than or equal` to 4?
  result_d = 7 <= 4
}

#______________________________________________________________________________

output "results" {
  value = {
    result_a = local.result_a
    result_b = local.result_b
    result_c = local.result_c
    result_d = local.result_d
  }
}

# You'll get this back:

/*

results = {
  "result_a" = false
  "result_b" = true
  "result_c" = true
  "result_d" = false
}

*/
#______________________________________________________________________________
