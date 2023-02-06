resource "aws_vpc" "my_vpc" {
   cidr_block = var.cidr-block

   tags = {
      Name = var.vpc-name
 }
}

output "vpcid" {
   value = aws_vpc.my_vpc.id
}