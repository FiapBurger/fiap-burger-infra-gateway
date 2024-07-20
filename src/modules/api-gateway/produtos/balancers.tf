data "aws_lb_target_group" "existing_tg" {
  filter {
    name   = "name"
    values = ["produtos-fiap-burger-tg"]
  }
}

resource "aws_lb_target_group" "produtos_acn_tg" {
  count = length(data.aws_lb_target_group.existing_tg.id) > 0 ? 0 : 1
  name     = "produtos-fiap-burger-tg"
  port     = 80
  protocol = "TCP"
  vpc_id   = var.vpcId
}

output "target_group_arn" {
  value = coalesce(data.aws_lb_target_group.existing_tg.arn, aws_lb_target_group.produtos_acn_tg[0].arn)
}
