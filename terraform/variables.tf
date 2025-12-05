variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "tags" {
  description = "Common tags applied to resources"
  type        = map(string)
  default = {
    Project = "aws-guardduty-auto-remediation-demo"
    Env     = "demo"
    Owner   = "mohamed"
  }
}
