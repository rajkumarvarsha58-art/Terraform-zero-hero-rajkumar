terraform {
  backend "s3" {
    bucket = "terraform-s3-bucket-raj"
    key    = "Rajkumar/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform_lock"
  }
}