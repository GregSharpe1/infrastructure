module "alerts" {
  source = "../../modules/grafana/alerting"

  alert_rule_groups = [
    for alert_rule_group in fileset(path.module, "./alerts/*.yaml") : yamldecode(file(alert_rule_group))["alerting"]
  ]

  providers = {
    grafana = grafana.instance
  }
}
