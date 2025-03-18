resource "grafana_notification_policy" "my_notification_policy" {
  provider = grafana.instance

  group_by      = ["..."]
  contact_point = grafana_contact_point.email_devnull.name

  group_wait      = "30s"
  group_interval  = "5m"
  repeat_interval = "2h"

  policy {
    matcher {
      label = "grafana_folder"
      match = "="
      value = grafana_folder.synthetic_monitoring.title
    }
  }
}
