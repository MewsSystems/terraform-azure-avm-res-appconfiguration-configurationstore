module "avm_interfaces" {
  source  = "Azure/avm-utl-interfaces/azure"
  version = "0.5.0"

  customer_managed_key                    = var.customer_managed_key
  diagnostic_settings                     = var.diagnostic_settings
  enable_telemetry                        = var.enable_telemetry
  lock                                    = var.lock
  managed_identities                      = var.managed_identities
  private_endpoints                       = local.private_endpoints
  private_endpoints_manage_dns_zone_group = var.private_endpoints_manage_dns_zone_group
  private_endpoints_scope                 = "${var.resource_group_resource_id}/providers/Microsoft.AppConfiguration/configurationStores/${var.name}"
  role_assignment_definition_scope        = var.resource_group_resource_id
  role_assignment_name_use_random_uuid    = var.role_assignment_name_use_random_uuid
  role_assignments                        = var.role_assignments
}
