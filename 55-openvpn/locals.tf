locals {
  common_tags = {
        project = var.project 
        environment = var.environment
        terraform = "true"

    }
  ami_id = data.aws_ami.openvpn.id
  #subnet in 1a AZ
  public_subnet_id = split(",", data.aws_ssm_parameter.public_subnet_ids.value)[0]
  openvpn_sg_id = data.aws_ssm_parameter.openvpn_sg_id.value
}