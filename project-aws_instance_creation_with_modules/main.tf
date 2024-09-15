provider "aws" {
  region = "us-east-1"
}
module "aws_instance" {
  source              = "./modules/aws_instance"
  region_value        = "es-east-1a"
  ami_id              = "ami-0182f373e66f89c85"
  instance_type_value = "t2.micro"
}
