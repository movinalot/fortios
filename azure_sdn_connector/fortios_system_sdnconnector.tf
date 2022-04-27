resource "fortios_system_sdnconnector" "system_sdnconnector_a" {
  provider = fortios.fgta

  azure_region    = local.azure_region
  ha_status       = local.ha_status
  type            = local.type
  name            = local.name
  update_interval = local.update_interval
  status          = local.status

  dynamic "route_table" {
    for_each = local.route_tables_and_routes
    content {
      name            = route_table.value.name
      subscription_id = route_table.value.subscription_id
      resource_group  = route_table.value.resource_group

      dynamic "route" {
        for_each = route_table.value.routes
        content {
          name     = route.value.name
          next_hop = route.value.next_hop_a
        }
      }
    }
  }
}

resource "fortios_system_sdnconnector" "system_sdnconnector_b" {
  provider = fortios.fgtb

  azure_region    = local.azure_region
  ha_status       = local.ha_status
  type            = local.type
  name            = local.name
  update_interval = local.update_interval
  status          = local.status

  dynamic "route_table" {
    for_each = local.route_tables_and_routes
    content {
      name            = route_table.value.name
      subscription_id = route_table.value.subscription_id
      resource_group  = route_table.value.resource_group

      dynamic "route" {
        for_each = route_table.value.routes
        content {
          name     = route.value.name
          next_hop = route.value.next_hop_b
        }
      }
    }
  }
}