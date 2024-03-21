resource "azurerm_kubernetes_cluster" "cluster" {
  location            = azurerm_resource_group.rs-group.location
  name                = var.cluster-name
  resource_group_name = azurerm_resource_group.rs-group.name
  dns_prefix          = "demok8s"
  default_node_pool {
    name       = "agentpool"
    vm_size    = "Standard_D2_v2"
    node_count = "1"
  }

  linux_profile {
    admin_username = "ubuntu"

    ssh_key {
      key_data = file(var.ssh_key)
    }
  }

  network_profile {
    network_plugin    = "kubenet"
    load_balancer_sku = "standard"
  }

  # service_principal {
  #   client_id     = var.client_id
  #   client_secret = var.client_secret
  # }
  service_principal {
    client_id     = data.vault_kv_secret_v2.example.data["client_id"]
    client_secret = data.vault_kv_secret_v2.example.data["client_secret"]
  }
}