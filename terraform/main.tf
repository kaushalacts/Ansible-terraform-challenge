provider "aws" {
  region = "ap-south-1"  
 }
resource "aws_instance" "linux_servers" {
  count         = 5
  ami           = "ami-0f58b397bc5c1f2e8"  # Ubuntu / Amazon Linux
  instance_type = "t3.micro"               # <-- Free Tier
  key_name      = "dev_chall1"

  tags = {
    Name = "day31-server-${count.index + 1}"
  }
}

output "server_ips" {
  value = aws_instance.linux_servers[*].public_ip
}
