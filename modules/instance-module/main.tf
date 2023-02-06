resource "aws_instance" "foo" {
  ami           = var.ami-id # us-west-2
  instance_type = var.instance-type

  network_interface {
    network_interface_id = var.nic-id
    device_index         = 0
  }

  tags = {
    "Name" = var.instance-name
  }
}