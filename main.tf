data "oci_core_public_ip" "core_public_ip_lookup" {
  for_each = var.core_public_ip_lookup

  ip_address    = each.value.ip_address
  private_ip_id = each.value.private_ip_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

