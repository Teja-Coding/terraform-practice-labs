terraform {

  
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.19.0"
    }
  }
    backend "s3" {
    bucket = "fineshit"
    key    = "my_local_variable_demo"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
  
}

provider "aws" {
  # Configuration options
}