resource "grafana_contact_point" "email" {
  provider = grafana.instance

  name = "Email - grafana-alerts+me@gregsharpe.co.uk"
  email {
    addresses               = ["grafana-alerts+me@gregsharpe.co.uk"]
    single_email            = true
    disable_resolve_message = false
  }
}

resource "grafana_contact_point" "slack_infrastructure_alerts" {
  provider = grafana.instance

  name = "Slack - #infrastructure-alerts"
  slack {
    recipient = "#infrastructure-alerts"
    url       = var.slack_infrastructure_alerts_webhook_url
    title = "{{ template \"slack_alert_message_title\" . }}"
    text = "{{ template \"slack_alert_message\" . }}"
  }
}

resource "grafana_contact_point" "slack_webhook_testing" {
  provider = grafana.instance

  name = "Slack - #webhook-testing"
  slack {
    recipient = "#webhook-testing"
    url       = var.slack_webhook_testing_webhook_url
    title = "{{ template \"slack_alert_message_title\" . }}"
    text = "{{ template \"slack_alert_message\" . }}"
  }
}
