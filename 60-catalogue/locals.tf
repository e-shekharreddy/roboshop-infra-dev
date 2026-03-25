locals {

    common_tags = {
        project = var.project
        environment = var.environment
        terraform = true
    }
  catalogue_sg_id = data.aws_ssm_parameter.catalogue_sg_id.value
  private_subnet_id = split(",", data.aws_ssm_parameter.private_subnet_ids.value)[0]
  ami_id = data.aws_ami.joindevops.value
  
}