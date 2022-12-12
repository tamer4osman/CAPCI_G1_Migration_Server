

resource "aws_subnet" "public_mgn" {       #Creating the public_subnet#
  vpc_id     = aws_vpc.mgn_vpc.id
  cidr_block = "192.168.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "eu-central-1a"

  tags = {
    Name = "Application_subnet"
  }
}


resource "aws_subnet" "private_mgn1" {       #Creating the private_subnet#
  vpc_id     = aws_vpc.mgn_vpc.id
  cidr_block = "192.168.11.0/24"
  map_public_ip_on_launch = false
  availability_zone = "eu-central-1a"

  tags = {
    Name = "data_subnet"
  }
}


resource "aws_subnet" "private_mgn2" {       #Creating the public_subnet#
  vpc_id     = aws_vpc.mgn_vpc.id
  cidr_block = "192.168.13.0/24"
  map_public_ip_on_launch = false
  availability_zone = "eu-central-1c"
  tags = {
    Name = "Staging_area_subnet"
  }
}