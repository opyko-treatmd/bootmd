terraform {
  required_version = ">= 1.5.0"
  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = ">= 1.0.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "CommonRG"
    storage_account_name = "common4olekpyko202408"
    container_name       = "github-terraform"
    key                  = "terraform.tfstate"
    # access_key           = "XBc4+D5bVmvZRJmhS+HYiHYim3T7jEJ8Pgz0HRxI9Dx4DUzyKRmOXCeAqYggaOnOxs9Lo+FEpG5L+AStfX0ryg=="
  }
}

provider "auth0" {
  debug = true
}

resource "null_resource" "main" {
  triggers = {
    value = "trigger_value"
  }
}
