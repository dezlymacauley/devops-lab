terraform {
  required_version = "~> 1.17.2"


  backend "s3" {
    region = "us-east-1"
    bucket = "devops-lab-220474267718-us-east-1-an"
    key    = "terraform.tfstate"
  }
}
