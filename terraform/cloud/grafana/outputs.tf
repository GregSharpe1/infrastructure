
output "executions_per_check" {
  value = module.synthetic_monitoring.executions_per_check
}

output "executions_per_day" {
  value = module.synthetic_monitoring.executions_per_day
}

output "execution_interval_minutes" {
  value = module.synthetic_monitoring.execution_interval_minutes
}

output "rounded_interval_minutes" {
  value = module.synthetic_monitoring.rounded_interval_minutes
}

output "recommended_interval_ms" {
  value = module.synthetic_monitoring.recommended_interval_ms
}
