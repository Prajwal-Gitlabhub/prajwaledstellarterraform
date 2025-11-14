terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.11.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
  access_key = var.akey
   secret_key =  var.skey
}
