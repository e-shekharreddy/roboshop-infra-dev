data "http" "my_public_ip" {
  url = "https://ipv4.icanhazip.com"
}

output "my_ip" {
  # Use chomp to remove the trailing newline character
  value = local.my_ip
}

data "aws_ssm_parameter" "bastion_sg_id" {
  name = "/${var.project}/${var.environment}/bastion_sg_id"
}