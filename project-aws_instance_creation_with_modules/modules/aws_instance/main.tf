provider "aws" {
  region = ""
}
resource "aws_instance" "ec2module" {
  ami           = var.ami_id
  instance_type = var.instance_type_value
}
