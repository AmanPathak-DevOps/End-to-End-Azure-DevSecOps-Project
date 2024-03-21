resource "azurerm_linux_virtual_machine" "name" {
  resource_group_name   = azurerm_resource_group.rs-group.name
  location              = var.location
  name                  = var.vm-name
  size                  = var.vm-size
  admin_username        = var.username
  network_interface_ids = [azurerm_network_interface.nic.id]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  admin_ssh_key {
    username = var.username
    public_key = file("./aman_vm.pub")
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  custom_data = base64encode(templatefile("${path.module}/tools-install.sh", {}))
  depends_on  = [azurerm_network_interface.nic]
}
