resource "grafana_cloud_stack_service_account" "cloud_sa" {
  provider = grafana.cloud

  stack_slug = local.grafana_stack

  name = "infrastructure-creator"
  role = "Admin"
  is_disabled = false
}

resource "grafana_cloud_stack_service_account_token" "token" {
  provider = grafana.cloud

  name = "infrastructure-creator"
  service_account_id = grafana_cloud_stack_service_account.cloud_sa.id
  stack_slug = local.grafana_stack
}
