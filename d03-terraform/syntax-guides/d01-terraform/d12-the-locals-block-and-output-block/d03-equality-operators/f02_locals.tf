locals {

  # This means: 5 `is equal` to 5?
  result_a = 5 == 5

  # This means: 8 `is not equal` to 8?
  result_b = 8 != 8
}

#______________________________________________________________________________

output "results" {
  value = {
    result_a = local.result_a
    result_b = local.result_b
  }
}

# You'll get this back:

/*

results = {
  "result_a" = true
  "result_b" = false
}

*/
#______________________________________________________________________________
