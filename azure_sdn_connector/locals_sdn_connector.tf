locals {
  azure_region    = "global"
  ha_status       = "enable"
  type            = "azure"
  name            = "AzureSDNRouteTableUpdate"
  update_interval = "60"
  status          = "enable"

  route_tables_and_routes = {
    "route_table_01" = {
      "name"            = "route_table_01"
      "resource_group"  = var.resource_group_and_subscription["rg_sub_01"].resource_group
      "subscription_id" = var.resource_group_and_subscription["rg_sub_01"].subscription_id
      "routes" = {
        "route_01" = {
          "name"       = "route_01"
          "next_hop_a" = "10.1.89.4"
          "next_hop_b" = "10.1.89.5"
        }
        "route_02" = {
          "name"       = "route_02"
          "next_hop_a" = "10.1.89.4"
          "next_hop_b" = "10.1.89.5"
        }
      }
    }
    "route_table_02" = {
      "name"            = "route_table_02"
      "resource_group"  = var.resource_group_and_subscription["rg_sub_02"].resource_group
      "subscription_id" = var.resource_group_and_subscription["rg_sub_02"].subscription_id
      "routes" = {
        "route_03" = {
          "name"       = "route_03"
          "next_hop_a" = "10.1.89.4"
          "next_hop_b" = "10.1.89.5"
        }
        "route_04" = {
          "name"       = "route_04"
          "next_hop_a" = "10.1.89.4"
          "next_hop_b" = "10.1.89.5"
        }
      }
    }
  }
}