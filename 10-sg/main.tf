module "sg" {
    source = "git::https://github.com/e-shekharreddy/terraform-aws-sg.git?ref=main"
    project = var.project
    environment = var.environment
    sg_name = var.sg_name
    vpc_id = local.vpc_id
}