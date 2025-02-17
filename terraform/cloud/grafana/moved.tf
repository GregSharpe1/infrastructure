moved {
  from = grafana_synthetic_monitoring_check.greg_sharpe_wales_http
  to = module.synthetic_monitoring.grafana_synthetic_monitoring_check.synthetic_monitoring_checks["greg_sharpe_wales_http"]
}

moved {
  from = grafana_synthetic_monitoring_check.the_rumour_generator_co_uk_http
  to = module.synthetic_monitoring.grafana_synthetic_monitoring_check.synthetic_monitoring_checks["the_rumour_generator_http"]
}
