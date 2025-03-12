provider "azurerm" {
  features {}
    # Required properties for authentication
  subscription_id = "9408054e-02d8-4db2-97d8-6625421663f4"
}

provider "azurerm" {
  features {}

  subscription_id   = var.subscription_id
  tenant_id         = var.tenant_id
  client_id         = var.client_id
  client_secret     = var.client_secret
}
