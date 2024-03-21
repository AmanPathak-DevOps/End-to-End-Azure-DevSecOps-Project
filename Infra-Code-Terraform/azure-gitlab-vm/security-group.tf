resource "azurerm_network_security_group" "security-group" {
  name                = var.sg-name
  resource_group_name = azurerm_resource_group.rs-group.name
  location            = var.location

  security_rule {
    name                       = "sgrule-for-vm"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_ranges         = ["9000", "22"]
    destination_port_ranges    = ["9000", "22"]
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  depends_on = [azurerm_virtual_network.vnet]
}