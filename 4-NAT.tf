resource "aws_eip" "US-VA-ElasticIP" {
  tags = {
    Name = "US-VA-ElasticIP"
  }
}

resource "aws_nat_gateway" "US-VA-Nat-GW" {
  allocation_id = aws_eip.US-VA-ElasticIP.id
  subnet_id     = aws_subnet.public-us-east-1a.id

  tags = {
    Name = "US-VA-Nat-GW"
  }
}
