output "guardduty_detector_id" {
  description = "ID of the GuardDuty detector"
  value       = module.guardduty_auto_remediation.guardduty_detector_id
}

output "lambda_name" {
  description = "Name of the auto remediation Lambda"
  value       = module.guardduty_auto_remediation.lambda_name
}

output "event_rule_arn" {
  description = "ARN of the GuardDuty EventBridge rule"
  value       = module.guardduty_auto_remediation.event_rule_arn
}
