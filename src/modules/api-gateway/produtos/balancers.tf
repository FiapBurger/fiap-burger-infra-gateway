resource "aws_lb" "produtos_fiap_burger_lb" {
  name               = "fiap-burger-lb-produtos"
  internal           = false
  load_balancer_type = "network"
  security_groups    = [var.securityGroupId]
  subnets            = var.subnetIds
}

data "aws_lb_target_group" "existing_tg" {
  name = "produtos-fiap-burger-tg"
}

resource "aws_lb_target_group" "produtos_acn_tg" {
  count    = length(data.aws_lb_target_group.existing_tg) > 0 ? 0 : 1
  name     = "produtos-fiap-burger-tg"
  port     = 80
  protocol = "TCP"
  vpc_id   = var.vpcId
}

resource "aws_lb_listener" "produtos_acn_listener" {
  load_balancer_arn = aws_lb.produtos_fiap_burger_lb.arn
  port              = 80
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = coalesce(data.aws_lb_target_group.existing_tg.arn, aws_lb_target_group.produtos_acn_tg[0].arn)
  }
}

output "target_group_arn" {
  value = coalesce(data.aws_lb_target_group.existing_tg.arn, aws_lb_target_group.produtos_acn_tg[0].arn)
}

output "produtos_lb_dns_name" {
  value = aws_lb.produtos_fiap_burger_lb.dns_name
}
