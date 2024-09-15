# create aws instance using the terraform 
#provide the provider specific details and or authentication details from variables file
provider "aws" {
  region = var.region
  #directly configuring the aws credentials in terraform(not recommended) instead of authorising on cli
  #   access_key = var.access_key
  #   secret_key = var.secret_key
}
# provide the resource type want to be created along with the details from variables file
resource "aws_instance" "myfirstinstance" {
  ami           = var.ami
  instance_type = var.instance_type
}
#print the instance id to the output
output "myfirstinstance_id" {
  value = aws_instance.myfirstinstance.id
}
