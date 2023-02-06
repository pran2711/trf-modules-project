resource "aws_network_interface" "tr-nic" {
  subnet_id       = var.subnet-id
  private_ips     = ["10.0.0.50"]
  security_groups = var.vsecg
}

output "nicid" {
  value = aws_network_interface.tr-nic.id
}