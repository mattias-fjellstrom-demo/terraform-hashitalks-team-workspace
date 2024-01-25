resource "azurerm_resource_group" "good" {
  name     = "rg-hashitalks-team-workspace"
  location = "swedencentral"
}

resource "azurerm_resource_group" "bad" {
  name     = "rg-hashitalks-team-workspace"
  location = "eastus"
}

module "resource-group-module" {
  source      = "app.terraform.io/mattias-fjellstrom/resource-group-module/hashitalks"
  version     = "1.0.1"
  location    = "westeurope"
  name_suffix = "hashitalks-resource-group"
  tags = {
    team        = "HashiTalks Team"
    project     = "HashiTalks Project"
    cost_center = "1234"
  }
}
