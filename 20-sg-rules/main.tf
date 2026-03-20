resource "aws_security_group_rule" "bastion_internet" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
#   cidr_blocks       = ["0.0.0.0/0"]
  cidr_blocks       = [local.my_ip]
# which security group you are creating this for "bastion"
  security_group_id = data.aws_ssm_parameter.bastion_sg_id