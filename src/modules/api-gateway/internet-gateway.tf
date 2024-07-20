resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpcId

  tags = {
    Name = "${var.apiGatewayName}-igw"
  }
}
