data "aws_internet_gateway" "existing_igw" {
  filter {
    name   = "attachment.vpc-id"
    values = [var.vpcId]
  }
}

resource "aws_internet_gateway" "igw" {
  count = length(data.aws_internet_gateway.existing_igw.id) > 0 ? 0 : 1
  vpc_id = var.vpcId

  tags = {
    Name = "${var.apiGatewayName}-igw"
  }
}

output "internet_gateway_id" {
  value = coalesce(data.aws_internet_gateway.existing_igw.id, aws_internet_gateway.igw[0].id)
}
