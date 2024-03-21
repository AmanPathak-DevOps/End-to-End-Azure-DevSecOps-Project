resource "azurerm_virtual_network" "vnet" {
  resource_group_name = azurerm_resource_group.rs-group.name
  name                = var.vnet-name
  location            = azurerm_resource_group.rs-group.location
  address_space       = [var.address-vn]

  depends_on = [azurerm_resource_group.rs-group]
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet
  resource_group_name  = azurerm_resource_group.rs-group.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.subnet-address]

  depends_on = [azurerm_virtual_network.vnet]
}