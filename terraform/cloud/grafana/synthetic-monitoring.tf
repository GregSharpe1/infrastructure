resource "grafana_synthetic_monitoring_installation" "sm_stack" {
  provider = grafana.cloud

  stack_id              = grafana_cloud_stack.gregsharpe.id
  metrics_publisher_key = grafana_cloud_access_policy_token.sm_metrics_publish.token
}

data "grafana_synthetic_monitoring_probes" "main" {
  provider   = grafana.sm
  depends_on = [grafana_synthetic_monitoring_installation.sm_stack]
}

resource "grafana_synthetic_monitoring_check" "greg_sharpe_wales_http" {
  provider = grafana.sm

  frequency = 300000
  job = "gregsharpe"
  target = "https://greg.sharpe.wales"
  enabled = true
  probes = [
    data.grafana_synthetic_monitoring_probes.main.probes.London,
  ]

  settings {
    http{}
  }
}

resource "grafana_synthetic_monitoring_check" "the_rumour_generator_co_uk_http" {
  provider = grafana.sm

  frequency = 300000
  job = "therumourgenerator"
  target = "https://therumourgenerator.co.uk"
  enabled = true
  probes = [
    data.grafana_synthetic_monitoring_probes.main.probes.London,
  ]

  settings {
    http{}
  }
}
