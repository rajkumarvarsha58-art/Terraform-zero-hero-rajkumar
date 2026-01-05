provider "aws" {
    region="us-east-1"
}

resource "aws_instance" "Rajkumar" {
    instance_type = "t3.micro"
    ami = "ami-068c0051b15cdb816"
}

resource "aws_dynamodb_table" "terraform_lock" {
    name = "terraform_lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }
}
    
