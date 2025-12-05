locals {
  project_name = "aws-guardduty-auto-remediation-demo"
}

module "guardduty_auto_remediation" {
  source       = "./modules/guardduty_auto_remediation"
  project_name = local.project_name
  tags         = var.tags
}
