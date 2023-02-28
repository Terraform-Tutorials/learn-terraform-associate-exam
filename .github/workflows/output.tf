output "aws-instance_ip" {
  description = "my private ip from aws provider"
  value = aws_instance.example.private_ip
} 

output "aws_instance_public_ip" { 
  description = "my ip"
  value = aws_instance.example.public_ip
}