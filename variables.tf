variable "apim_name" {
  description = "Name of the API Management instance"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group where APIM is deployed"
  type        = string
}

variable "publisher_name" {
  description = "Publisher's name for APIM"
  type        = string
}

variable "publisher_email" {
  description = "Publisher's email for notifications"
  type        = string
}

variable "sku_name" {
  description = "APIM SKU tier"
  type        = string
  default     = "Developer_1"
}

variable "subscription_id" {}
variable "tenant_id" {}
variable "client_id" {}
variable "client_secret" {}
