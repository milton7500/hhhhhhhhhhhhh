
resource "azurerm_resource_group" "myrg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = var.account_replication_type

  tags = {
    environment = var.environment
  }
}

output "storage_account_name" { value = azurerm_storage_account.example.name }