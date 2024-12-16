// https://community.grafana.com/t/working-configuration-example-for-alerts-templating-telegram-and-slack/80988
resource "grafana_message_template" "default_template" {
  provider = grafana.instance

  name = "Slack Template"
  template = file("${path.module}/templates/message-templates/slack.gotmpl")
}
