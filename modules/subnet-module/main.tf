
resource "aws_subnet" "mysubnet" {
   vpc_id = var.vpc-id
   cidr_block = var.cidr

   tags = {
     "Name" = var.subnet-name
   }
}

output "subnetid" {
   value = aws_subnet.mysubnet.id
}