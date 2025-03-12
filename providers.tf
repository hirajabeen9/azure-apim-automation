provider "azurerm" {
  features {}

  subscription_id   = var.subscription_id
  tenant_id         = var.tenant_id
  client_id         = var.client_id
  client_secret     = var.client_secret
}

terraform {
  backend "azurerm" {
    resource_group_name  = "Practice-DevOps"
    storage_account_name = "tfbackendstorageautomate"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
