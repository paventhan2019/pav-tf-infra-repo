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