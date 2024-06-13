terraform {
  backend "s3" {
    bucket = "terraform-smit-1"
    key    = "params/terraform.tfstate"
    region = "us-east-1"
  }
}
