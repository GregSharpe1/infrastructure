resource "grafana_cloud_stack" "gregsharpe" {
  provider = grafana.cloud

  name        = local.grafana_stack
  slug        = local.grafana_stack
  region_slug = local.grafana_stack_region
}
