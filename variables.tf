variable "core_public_ip_lookup" {
  description = <<EOT
Map of core_public_ip_lookup, attributes below
Optional:
    - ip_address
    - private_ip_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    ip_address    = optional(string)
    private_ip_id = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

