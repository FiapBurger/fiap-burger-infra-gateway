
resource "aws_lb" "checkout_lb" {
  name               = var.lbCheckoutName
  internal           = false
  load_balancer_type = "network"
  security_groups    = [var.securityGroupId]
  subnets            = var.subnetIds
}

resource "aws_lb_target_group" "checkout_tg" {
  name     = var.lbCheckoutTgName
  port     = 80
  protocol = "TCP"
  vpc_id   = var.vpcId
}

resource "aws_lb_listener" "checkout_listener" {
  load_balancer_arn = aws_lb.checkout_lb.arn
  port              = 80
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.checkout_tg.arn
  }
}

output "target_group_arn" {
  value = aws_lb_target_group.checkout_tg.arn
}