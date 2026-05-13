output "aws06_was_tg_arn" {
    value = aws_lb_target_group.aws06_alb_was_group.arn
}
output "aws06_jenkins_tg_arn" {
    value = aws_lb_target_group.aws06_alb_jenkins_group.arn
}
# data "aws_lb_target_group" "aws06_was_tg" {
#   name = "${var.prefix}-alb-was-group"
# }