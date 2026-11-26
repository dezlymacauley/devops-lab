provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      ProjectName = "${var.project_name}"
    }
  }
}
