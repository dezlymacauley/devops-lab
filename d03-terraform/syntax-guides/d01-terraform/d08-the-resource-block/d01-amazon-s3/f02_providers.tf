provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      CreatedUsing = "terraform"
      ProjectName  = "devops-lab"
    }
  }
}
