resource "azurerm_public_ip" "public-ip" {
  name                = var.ip-name
  resource_group_name = azurerm_resource_group.rs-group.name
  location            = azurerm_resource_group.rs-group.location
  allocation_method   = "Dynamic"
}

resource "azurerm_network_interface" "nic" {
  name                = var.nic-name
  location            = azurerm_resource_group.rs-group.location
  resource_group_name = azurerm_resource_group.rs-group.name

  ip_configuration {
    name                          = "external"
    subnet_id                     = azurerm_subnet.subnet1.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.public-ip.id
  }

  depends_on = [azurerm_subnet.subnet1]
}