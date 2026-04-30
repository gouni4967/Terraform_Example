# aws_infra/alb/data.tf

data "aws_vpc" "aws06_vpc" {
  filter {
    name   = "tag:Name"
    values = ["${var.prefix}-vpc"]
  }
}
data "aws_subnets" "aws06_public_subnets" {
  filter {
    name   = "tag:Name"
    values = ["${var.prefix}-public-subnet-*"]
  }
}
data "aws_security_group" "aws06_http_sg" {
  filter {
    name   = "tag:Name"
    values = ["${var.prefix}-http-sg"]
  }
}