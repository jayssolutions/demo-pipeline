output "server_public_ip" {
  value       = aws_instance.web.public_ip
  description = "Public IP address of the deployed EC2 instance"
}
