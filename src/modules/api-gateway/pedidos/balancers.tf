resource "aws_lb" "pedidos_lb" {
  name               = var.lbPedidosName
  internal           = false
  load_balancer_type = "network"
  security_groups    = [var.securityGroupId]
  subnets            = var.subnetIds
}

resource "aws_lb_target_group" "pedidos_tg" {
  name     = var.lbPedidosTgName
  port     = 80
  protocol = "TCP"
  vpc_id   = var.vpcId
}

resource "aws_lb_listener" "pedidos_listener" {
  load_balancer_arn = aws_lb.pedidos_lb.arn
  port              = 80
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.pedidos_tg.arn
  }
}

output "target_group_arn" {
  value = aws_lb_target_group.pedidos_tg.arn
}
