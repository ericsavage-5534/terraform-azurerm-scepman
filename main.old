# Version requirements

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.69.0"
    }
  }
  backend "local" {}

  required_version = "~> 1.5.4"
}

provider "azurerm" {
  features {}

  subscription_id   = "03990e50-28fb-4b6b-b33f-ca562c56072"
  tenant_id         = "1b212e38-787d-48cb-83bb-5e4302f225e4"
  client_id         = "5bee6409-392f-46f7-a67c-d73748c1bb6b"
  client_secret     = "0dK8Q~vg2zweECQmWdshJFvBKZfYOM2T258ZBb.N"
}

# Resources

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  tags = var.tags
}
module "scepman" {
  source  = "../.."
  #version = "0.2.2"
{
  # insert the 8 required variables here


  organization_name = var.organization_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location

  storage_account_name = var.storage_account_name
  key_vault_name       = var.key_vault_name
  law_name             = var.law_name

  service_plan_name                   = var.service_plan_name
  app_service_name_primary            = var.app_service_name_primary
  app_service_name_certificate_master = var.app_service_name_certificate_master

  app_settings_primary            = var.app_settings_primary
  app_settings_certificate_master = var.app_settings_certificate_master

  enable_application_insights = var.enable_application_insights

  tags = var.tags
}
