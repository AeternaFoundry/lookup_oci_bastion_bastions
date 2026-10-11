data "oci_bastion_bastions" "bastion_bastions_lookup" {
  for_each = var.bastion_bastions_lookup

  compartment_id          = each.value.compartment_id
  bastion_id              = each.value.bastion_id
  bastion_lifecycle_state = each.value.bastion_lifecycle_state
  name                    = each.value.name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

