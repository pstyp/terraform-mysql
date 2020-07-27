
provider "azurerm" {
          features {}
          }

          resource "azurerm_resource_group" "example" {
                    name     = "RG2"
                      location = var.location
                      }

                      resource "azurerm_mysql_server" "example" {
                                name                = "paul-stype-mysql-server"
                                  location            = azurerm_resource_group.example.location
                                    resource_group_name = azurerm_resource_group.example.name

                                      administrator_login          = var.user 
                                        administrator_login_password = var.pass

                                          sku_name   = "B_Gen5_2"
                                            storage_mb = 5120
                                              version    = "5.7"

                                                        public_network_access_enabled     = true
                                                          ssl_enforcement_enabled           = false 
                                                            }

