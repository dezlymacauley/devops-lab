data "aws_region" "current" {
}

data "aws_availability_zones" "available" {
  state = "available"

  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

# output "azs" {
#   value = data.aws_availability_zones.available.names
# }

/*

azs = [
  + "us-east-1a",
  + "us-east-1b",
  + "us-east-1c",
  + "us-east-1d",
  + "us-east-1e",
  + "us-east-1f",
]

*/
