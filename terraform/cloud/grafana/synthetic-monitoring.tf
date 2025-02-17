resource "grafana_synthetic_monitoring_installation" "sm_stack" {
  provider = grafana.cloud

  stack_id              = grafana_cloud_stack.gregsharpe.id
  metrics_publisher_key = grafana_cloud_access_policy_token.sm_metrics_publish.token
}

locals {
  endpoints = {
    "greg_sharpe_wales_http" = {
      "target"    = "https://greg.sharpe.wales",
    },
    "the_rumour_generator_http" = {
      "target"    = "https://therumourgenerator.co.uk",
    },
  }
}

module "synthetic_monitoring" {
  source = "github.com/GregSharpe1/terraform-modules//grafana/synthetic-monitoring?ref=initial-module-count"

  endpoints = local.endpoints

  providers = {
    grafana = grafana.sm
  }
}
