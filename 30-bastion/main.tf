resource "aws_instance" "bastion" {
  ami           = local.ami_id
  instance_type = var.instance_type
  subnet_id = 

  tags = {
    Name = "HelloWorld"
  }
}