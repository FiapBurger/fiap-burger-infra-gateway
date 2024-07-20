data "aws_security_group" "existing_sg" {
  filter {
    name   = "group-name"
    values = ["${var.apiGatewayName}-sg"]
  }

  filter {
    name   = "vpc-id"
    values = [var.vpcId]
  }
}

resource "aws_security_group" "api_gateway_sg" {
  count = length(data.aws_security_group.existing_sg.id) > 0 ? 0 : 1
  name        = "${var.apiGatewayName}-sg"
  description = "Security group for the API Gateway"
  vpc_id      = var.vpcId

  ingress {
    description = "Allow inbound HTTP traffic"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow inbound HTTPS traffic"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.apiGatewayName}-sg"
  }
}

output "security_group_id" {
  value = coalesce(data.aws_security_group.existing_sg.id, aws_security_group.api_gateway_sg[0].id)
}
