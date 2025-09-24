provider "aws" {
  region = "ap-south-1"  

resource "aws_instance" "linux_servers" {
  count         = 5
  ami           = "ami-0f58b397bc5c1f2e8" # Ubuntu 22.04 AMI ID (change per region)
  instance_type = "t2.micro"
  key_name      = "dev_chall"  
  tags = {
    Name = "day31-server-${count.index + 1}"
  }
}

output "server_ips" {
  value = aws_instance.linux_servers[*].public_ip
}
