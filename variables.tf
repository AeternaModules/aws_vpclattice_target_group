variable "vpclattice_target_groups" {
  description = <<EOT
Map of vpclattice_target_groups, attributes below
Required:
    - name
    - type
Optional:
    - region
    - tags
    - tags_all
    - config (block):
        - health_check (optional, block):
            - enabled (optional)
            - health_check_interval_seconds (optional)
            - health_check_timeout_seconds (optional)
            - healthy_threshold_count (optional)
            - matcher (optional, block):
                - value (optional)
            - path (optional)
            - port (optional)
            - protocol (optional)
            - protocol_version (optional)
            - unhealthy_threshold_count (optional)
        - ip_address_type (optional)
        - lambda_event_structure_version (optional)
        - port (optional)
        - protocol (optional)
        - protocol_version (optional)
        - vpc_identifier (optional)
EOT

  type = map(object({
    name     = string
    type     = string
    region   = optional(string)
    tags     = optional(map(string))
    tags_all = optional(map(string))
    config = optional(object({
      health_check = optional(object({
        enabled                       = optional(bool)
        health_check_interval_seconds = optional(number)
        health_check_timeout_seconds  = optional(number)
        healthy_threshold_count       = optional(number)
        matcher = optional(object({
          value = optional(string)
        }))
        path                      = optional(string)
        port                      = optional(number)
        protocol                  = optional(string)
        protocol_version          = optional(string)
        unhealthy_threshold_count = optional(number)
      }))
      ip_address_type                = optional(string)
      lambda_event_structure_version = optional(string)
      port                           = optional(number)
      protocol                       = optional(string)
      protocol_version               = optional(string)
      vpc_identifier                 = optional(string)
    }))
  }))
  # Note: 14 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

