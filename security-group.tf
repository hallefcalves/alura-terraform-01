resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "Allow SSH traffic"
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = var.cdirs_acesso_remoto
    }
  tags = {
      Name = "ssh"
  }
}

resource "aws_security_group" "allow_ssh_us-east-2" {
    provider = aws.us-east-2
    name = "allow_ssh"
    description = "Allow SSH traffic"
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = var.cdirs_acesso_remoto
    }
  tags = {
      Name = "ssh"
  }
}