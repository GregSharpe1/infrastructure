variable "grafana_cloud_access_policy_token" {
  type = string
  sensitive = true
  # required
}

variable "slack_infrastructure_alerts_webhook_url" {
  type = string
  sensitive = true
  # required
}

variable "slack_webhook_testing_webhook_url" {
  type = string
  sensitive = true
  # required
}
