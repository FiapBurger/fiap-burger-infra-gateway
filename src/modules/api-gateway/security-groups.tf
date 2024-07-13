resource "aws_security_group" "api_gateway_sg" {
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

output "api_gateway_sg_id" {
  value = aws_security_group.api_gateway_sg.id
}
