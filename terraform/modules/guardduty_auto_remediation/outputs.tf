output "guardduty_detector_id" {
  value = aws_guardduty_detector.main.id
}

output "lambda_name" {
  value = aws_lambda_function.gd_lambda.function_name
}

output "event_rule_arn" {
  value = aws_cloudwatch_event_rule.guardduty_findings.arn
}
