resource "aws_security_group" "allow_tls" {
  name        = "tr-secg"
  description = "tr-secg"
  vpc_id = var.vpc-id

  ingress {
    description      = "TLS from TR-VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
     "Name" = var.secg-name
  }
}

output "secid" {
  value = aws_security_group.allow_tls.id
}