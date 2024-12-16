resource "grafana_folder" "home" {
  provider = grafana.instance

  title = "Home"
}

resource "grafana_folder" "unifi" {
  provider = grafana.instance

  title = "Unifi"
}

resource "grafana_folder" "billing" {
  provider = grafana.instance

  title = "Billing"
}
