resource "aws_lb" "clientes_lb" {
  name               = "fiap-burger-lb-clientes"
  internal           = false
  load_balancer_type = "network"
  security_groups    = [var.securityGroupId]
  subnets            = var.subnetIds
}

resource "aws_lb_target_group" "clientes_tg" {
  name     = "clientes-fiap-burger-tg"
  port     = 80
  protocol = "TCP"
  vpc_id   = var.vpcId
}

resource "aws_lb_listener" "clientes_listener" {
  load_balancer_arn = aws_lb.clientes_lb.arn
  port              = 80
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.clientes_tg.arn
  }
}

output "target_group_arn" {
  value = aws_lb_target_group.clientes_tg.arn
}
