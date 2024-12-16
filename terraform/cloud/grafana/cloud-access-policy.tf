resource "grafana_cloud_access_policy" "sm_metrics_publish" {
  provider = grafana.cloud

  region = local.grafana_stack_region
  name   = "metric-publisher-for-sm"
  scopes = ["metrics:write", "stacks:read", "logs:write", "traces:write"]

  realm {
    type       = "stack"
    identifier = grafana_cloud_stack.gregsharpe.id
  }
}

resource "grafana_cloud_access_policy_token" "sm_metrics_publish" {
  provider = grafana.cloud

  region           = local.grafana_stack_region
  access_policy_id = grafana_cloud_access_policy.sm_metrics_publish.policy_id
  name             = "metric-publisher-for-sm"
}
