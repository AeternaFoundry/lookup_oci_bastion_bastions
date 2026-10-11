variable "bastion_bastions_lookup" {
  description = <<EOT
Map of bastion_bastions_lookup, attributes below
Required:
    - compartment_id
Optional:
    - bastion_id
    - bastion_lifecycle_state
    - name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id          = string
    bastion_id              = optional(string)
    bastion_lifecycle_state = optional(string)
    name                    = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

