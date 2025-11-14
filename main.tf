resource "aws_instance" "wipro" {

    ami = "ami-001843b876406202a"
    instance_type = "t2.micro"
    tags = {
        "Name" = "wipro5"
        "ttl" ="1300"
        "owner" = "wipro"
    }
}

resource "aws_s3_bucket" "d1" {
  bucket = "14112025day"
}

terraform {
  cloud {
    organization = "cumminstrainer"
    ## Required for Terraform Enterprise; Defaults to app.terraform.io for Terraform Cloud
    hostname = "app.terraform.io"

    workspaces {
      tags = ["terraformwipro"]
    }
  }
}
