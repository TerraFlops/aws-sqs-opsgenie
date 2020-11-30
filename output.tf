output "alarm_arn" {
  value = aws_cloudwatch_metric_alarm.alarm.arn
}

output "alarm_name" {
  value = aws_cloudwatch_metric_alarm.alarm.alarm_name
}

output "sns_topic_arn" {
  value = aws_sns_topic.alarm.arn
}

output "sns_topic_name" {
  value = aws_sns_topic.alarm.name
}

output "opsgenie_api_integration_name" {
  value = length(var.opsgenie_responding_users) > 0 || length(var.opsgenie_responding_teams) > 0 ? opsgenie_api_integration.opsgenie_integration[0].name : null
}

output "opsgenie_api_integration_id" {
  value = length(var.opsgenie_responding_users) > 0 || length(var.opsgenie_responding_teams) > 0 ? opsgenie_api_integration.opsgenie_integration[0].id : null
}

output "opsgenie_api_key" {
  value = length(var.opsgenie_responding_users) > 0 || length(var.opsgenie_responding_teams) > 0 ? opsgenie_api_integration.opsgenie_integration[0].api_key : null
}
