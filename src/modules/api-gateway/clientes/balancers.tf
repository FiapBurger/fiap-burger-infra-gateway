resource "aws_lb" "clients_fiap_burger_lb" {
  name               = var.lbClientsName
  internal           = var.lbInternal
  load_balancer_type = var.lbType
  security_groups    = [var.securityGroupId]
  subnets            = var.subnetIds
}

resource "aws_lb_target_group" "clients_fiap_burger_tg" {
  name     = var.lbClientsTgName
  port     = var.targetGroupPort
  protocol = var.targetGroupProtocol
  vpc_id   = var.vpcId
}

resource "aws_lb_listener" "clients_fiap_burger_listener" {
  load_balancer_arn = aws_lb.clients_fiap_burger_lb.arn
  port              = var.listenerPort
  protocol          = var.listenerProtocol

  default_action {
    type             = var.defaultActionType
    target_group_arn = aws_lb_target_group.clients_fiap_burger_tg.arn
  }
}
