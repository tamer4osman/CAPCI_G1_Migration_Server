resource "aws_vpc" "mgn_vpc" {
  cidr_block = "192.168.0.0/16"
  tags = {
    Name = "migrated_resources"
  } 
}

