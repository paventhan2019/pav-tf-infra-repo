resource "aws_instance" "pav-web-server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "pav-web-server"
  }
}

resource "aws_instance" "pav-app-server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "pav-app-server"
  }
}

terraform {
  backend "s3" {
    bucket         = "t2s-finops-terraform-state"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "t2s-terraform-lock"
  }
}