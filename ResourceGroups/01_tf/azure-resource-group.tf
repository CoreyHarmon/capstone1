terraform {
    required_version = ">= 1.0.0"
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = ">= 2.0"
        }
    }
}
provider "azurerm"{
    features {}
}
resource "azurerm_resource_group" "my_demo_rg_202401CEIWD" {
    location = "centralus"
    name = "my_demo_rg_202401CEIWD"
}

# Virtual network
resource "azurerm_virtual_network" "vnet" {
    name = "vnet_terraform_demo"
    address_space = ["10.0.0.0/24"]
    location = "centralus"
    resource_group_name = azurerm_resource_group.rg.name 
}

