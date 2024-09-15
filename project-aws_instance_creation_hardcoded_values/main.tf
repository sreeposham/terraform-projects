# create aws instance using the terraform 
#provide the provider specific details and or authentication details
provider "aws"{
    region="ap-south-1"
}
# provide the resource type want to be created along with the details
resource "aws_instance" "myfirstinstance"{
    ami="ami-0182f373e66f89c85"
    instance_type="t2.micro"
}