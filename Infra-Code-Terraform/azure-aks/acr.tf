resource "azurerm_container_registry" "frontend" {
  name                = var.acr-name
  resource_group_name = azurerm_resource_group.rs-group.name
  location            = azurerm_resource_group.rs-group.location
  sku                 = "Premium"
}

resource "azurerm_container_registry" "backend" {
  name                = var.acr-name2
  resource_group_name = azurerm_resource_group.rs-group.name
  location            = azurerm_resource_group.rs-group.location
  sku                 = "Premium"
}