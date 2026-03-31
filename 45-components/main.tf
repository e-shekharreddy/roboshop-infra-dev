module "component" {
    for_each = var.components
    source = "../../terraform-roboshop-component"
    # source = "git::https://github.com/e-shekharreddy/terraform-roboshop-component.git?ref=main"
    component = each.key
    rule_priority = each.value.rule_priority
}