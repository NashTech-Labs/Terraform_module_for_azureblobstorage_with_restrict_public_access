terraform {

  required_providers {

    azurerm = {

      source  = "hashicorp/azurerm"

      version = "3.44.1"

    }

  }

}




provider "azurerm" {

  features {




  }

}




resource "azurerm_storage_account" "storage_account" {

  name                     = var.storagename

  resource_group_name      = var.resource_group

  location                 = var.location

  account_tier             = "Standard"

  account_replication_type = "GRS"

  sku_name                 = var.sku

  min_tls_version          = "TLS1_2"

  enable_https_traffic_only = true

  




  blob_properties {

    delete_retention_policy {

      days = 7

    }

  }




  allow_nested_items_to_be_public = false




  network_rules {

      default_action             = "Deny"

      virtual_network_subnet_ids = [var.virtual_network_subnet_ids]

    }




  tags = var.tags




}




resource "azurerm_storage_container" "storage_containers" {

  for_each             = toset(var.container_names)

  name                 = each.value

  storage_account_name = azurerm_storage_account.storage_account.name

  container_access_type = "private"

}
