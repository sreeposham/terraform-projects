output "public_ip_address" {
  value = aws_instance.ec2module.public_ip
}
output "instance_id" {
  value = aws_instance.ec2module.id
}
output "region" {
  value = aws_instance.ec2module.availability_zone
}
