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

# Provider configuration

provider "azurerm" {
  features {}

  appId: = "3d0e3a35-f83b-405d-baff-6abb22e9040b"
  "displayName": "azure-cli-2023-08-09-01-06-37"
  "password": "g-T8Q~5Dt-ydAWUhEIh04I133erZvPsY1KlG-cu7"
  "tenant": "c38aa44d-4165-427e-94a7-62d15e922c35"
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
