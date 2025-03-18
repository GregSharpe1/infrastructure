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
    # "greg_sharpe_wales_http_custom_header" = {
    #   target = "https://greg.sharpe.wales/posts/terraform-kubernetes-namespace-removal",
    #   settings = {
    #     http = {
    #       headers = [
    #         "key3: value2"
    #       ]
    #     }
    #   }
    # },
  }
}

module "synthetic_monitoring" {
  source = "github.com/GregSharpe1/terraform-modules//grafana/synthetic-monitoring?ref=0.0.3"
  # source = "/home/greg/Git/Github/GregSharpe1/terraform-modules/grafana/synthetic-monitoring"

  endpoints = local.endpoints

  providers = {
    grafana = grafana.sm
  }
}

output "length_endpoints" {
  value = length(local.endpoints)
}
