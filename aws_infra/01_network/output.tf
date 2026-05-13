output "vpc_id" {
  value = aws_vpc.aws06_vpc.id
}
output "public_subnet_ids" {
  value = aws_subnet.aws06_public_subnet[*].id
}
output "private_subnet_ids" {
  value = aws_subnet.aws06_private_subnet[*].id
}
output "ssh_sg_id" {
  value = aws_security_group.aws06_ssh_sg.id
}
output "http_sg_id" {
  value = aws_security_group.aws06_http_sg.id
}