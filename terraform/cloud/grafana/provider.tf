# For backend purposes only.


# Created here: https://grafana.com/orgs/gregsharpe/access-policies
# Token name: terraform-top-level
provider "grafana" {
  alias = "cloud"
  cloud_access_policy_token = var.grafana_cloud_access_policy_token
}

provider "grafana" {
  alias           = "sm"
  sm_access_token = grafana_synthetic_monitoring_installation.sm_stack.sm_access_token
  sm_url          = grafana_synthetic_monitoring_installation.sm_stack.stack_sm_api_url
}

provider "grafana" {
  alias = "instance"

  url  =  grafana_cloud_stack.gregsharpe.url
  auth = grafana_cloud_stack_service_account_token.token.key
}

