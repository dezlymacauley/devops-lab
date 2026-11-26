provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      ProjectName = "${local.project_name}"
    }
  }
}
