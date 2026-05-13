data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = var.remote_state_bucket
    key    = "network/terraform.tfstate"
    region = var.region
  }
}
data "terraform_remote_state" "ec2" {
  backend = "s3"
  config = {
    bucket = var.remote_state_bucket
    key    = "ec2/terraform.tfstate"
    region = var.region
  }
}
data "terraform_remote_state" "iam" {
  backend = "s3"
  config = {
    bucket = var.remote_state_bucket
    key    = "iam/terraform.tfstate"
    region = var.region
  }
}
data "terraform_remote_state" "alb" {
  backend = "s3"
  config = {
    bucket = var.remote_state_bucket
    key    = "alb/terraform.tfstate"
    region = var.region
  }
}

# 1. 태그로 AMI 찾기

# data "aws_ami" "was_ami" {
#   most_recent = true
#   owners      = ["self"] # 내가 만든 AMI 중에서 찾음

#   filter {
#     name   = "tag:Name"
#     values = ["${var.prefix}-instance-ami"]
#   }
# }

# # 2. VPC 및 서브넷 정보
# data "aws_vpc" "aws06_vpc" {
#   filter {
#     name   = "tag:Name"
#     values = ["${var.prefix}-vpc"]
#   }
# }

# data "aws_subnets" "aws06_private_subnets" {
#   filter {
#     name   = "vpc-id"
#     values = [data.aws_vpc.aws06_vpc.id]
#   }
#   filter {
#     name   = "tag:Name"
#     values = ["${var.prefix}-private-*"]
#   }
# }

# data "aws_security_group" "aws06_was_sg" {
#   filter {
#     name   = "tag:Name"
#     values = ["${var.prefix}-http-sg"]
#   }
# }

# data "aws_iam_instance_profile" "aws06_ec2_profile" {
#   name = "${var.prefix}-ec2-instance-profile"
# }

# data "aws_lb_target_group" "aws06_was_tg" {
#   name = "${var.prefix}-alb-was-group"
# }