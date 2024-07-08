package terraform.validation

import data.tfplan

default private_cluster = false
default cloud_sql_secure = false

private_cluster {
  some i
  resource := tfplan.resource_changes[i]
  resource.type == "google_container_cluster"
  resource.change.after.private_cluster == true
}

cloud_sql_secure {
  some i
  resource := tfplan.resource_changes[i]
  resource.type == "google_sql_database_instance"
  resource.change.after.settings.ip_configuration.ipv4_enabled == false
  resource.change.after.settings.ip_configuration.require_ssl == true
  resource.change.after.settings.ip_configuration.authorized_networks == []
}

allow {
  private_cluster
  cloud_sql_secure
}
