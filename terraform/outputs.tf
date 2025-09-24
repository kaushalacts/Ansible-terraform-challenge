output "public_ips" {
  value = aws_instance.linux_servers[*].public_ip
}
