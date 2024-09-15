# create aws instance using the terraform 
#provide the provider specific details and or authentication details
provider "aws" {
  region = "us-east-1"
  #directly configuring the aws credentials in terraform(not recommended) instead of authorising on cli
  access_key = "your-access-key-id"
  secret_key = "your-secret-access-key"
}
# provide the resource type want to be created along with the details
resource "aws_instance" "myfirstinstance" {
  ami           = "ami-0182f373e66f89c85"
  instance_type = "t2.micro"
}
#print the instance id to the output
output "myfirstinstance_id" {
  value = aws_instance.myfirstinstance.id
}
