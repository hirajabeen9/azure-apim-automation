terraform {
  backend "azurerm" {
    resource_group_name  = "Practice-DevOps"
    storage_account_name = "tfbackendstorageautomate"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}

module "apim" {
  source = "../../modules/apim"

  apim_name           = var.apim_name
  location           = var.location
  resource_group_name = var.resource_group_name
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email
  sku_name            = var.sku_name
}
