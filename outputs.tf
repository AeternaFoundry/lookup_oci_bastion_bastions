output "bastion_bastions_lookup_id" {
  description = "Map of id values across all bastion_bastions_lookup, keyed the same as var.bastion_bastions_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_bastion_bastions.bastion_bastions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bastion_bastions_lookup_bastion_id" {
  description = "Map of bastion_id values across all bastion_bastions_lookup, keyed the same as var.bastion_bastions_lookup except keys with no bastion_id are omitted"
  value       = { for k, v in data.oci_bastion_bastions.bastion_bastions_lookup : k => v.bastion_id if v.bastion_id != null && length(v.bastion_id) > 0 }
}
output "bastion_bastions_lookup_bastion_lifecycle_state" {
  description = "Map of bastion_lifecycle_state values across all bastion_bastions_lookup, keyed the same as var.bastion_bastions_lookup except keys with no bastion_lifecycle_state are omitted"
  value       = { for k, v in data.oci_bastion_bastions.bastion_bastions_lookup : k => v.bastion_lifecycle_state if v.bastion_lifecycle_state != null && length(v.bastion_lifecycle_state) > 0 }
}
output "bastion_bastions_lookup_bastions" {
  description = "Map of bastions values across all bastion_bastions_lookup, keyed the same as var.bastion_bastions_lookup except keys with no bastions are omitted"
  value       = { for k, v in data.oci_bastion_bastions.bastion_bastions_lookup : k => v.bastions if v.bastions != null && length(v.bastions) > 0 }
}
output "bastion_bastions_lookup_compartment_id" {
  description = "Map of compartment_id values across all bastion_bastions_lookup, keyed the same as var.bastion_bastions_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_bastion_bastions.bastion_bastions_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "bastion_bastions_lookup_filter" {
  description = "Map of filter values across all bastion_bastions_lookup, keyed the same as var.bastion_bastions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_bastion_bastions.bastion_bastions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "bastion_bastions_lookup_name" {
  description = "Map of name values across all bastion_bastions_lookup, keyed the same as var.bastion_bastions_lookup except keys with no name are omitted"
  value       = { for k, v in data.oci_bastion_bastions.bastion_bastions_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}

