resource "azurerm_resource_group" "rs-group" {
  name     = var.rs-group-name
  location = var.location
}