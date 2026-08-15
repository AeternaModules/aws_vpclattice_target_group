output "vpclattice_target_groups_id" {
  description = "Map of id values across all vpclattice_target_groups, keyed the same as var.vpclattice_target_groups"
  value       = { for k, v in aws_vpclattice_target_group.vpclattice_target_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vpclattice_target_groups_arn" {
  description = "Map of arn values across all vpclattice_target_groups, keyed the same as var.vpclattice_target_groups"
  value       = { for k, v in aws_vpclattice_target_group.vpclattice_target_groups : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "vpclattice_target_groups_config" {
  description = "Map of config values across all vpclattice_target_groups, keyed the same as var.vpclattice_target_groups"
  value       = { for k, v in aws_vpclattice_target_group.vpclattice_target_groups : k => one(v.config) if v.config != null && length(v.config) > 0 }
}
output "vpclattice_target_groups_name" {
  description = "Map of name values across all vpclattice_target_groups, keyed the same as var.vpclattice_target_groups"
  value       = { for k, v in aws_vpclattice_target_group.vpclattice_target_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "vpclattice_target_groups_region" {
  description = "Map of region values across all vpclattice_target_groups, keyed the same as var.vpclattice_target_groups"
  value       = { for k, v in aws_vpclattice_target_group.vpclattice_target_groups : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vpclattice_target_groups_status" {
  description = "Map of status values across all vpclattice_target_groups, keyed the same as var.vpclattice_target_groups"
  value       = { for k, v in aws_vpclattice_target_group.vpclattice_target_groups : k => v.status if v.status != null && length(v.status) > 0 }
}
output "vpclattice_target_groups_tags" {
  description = "Map of tags values across all vpclattice_target_groups, keyed the same as var.vpclattice_target_groups"
  value       = { for k, v in aws_vpclattice_target_group.vpclattice_target_groups : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "vpclattice_target_groups_tags_all" {
  description = "Map of tags_all values across all vpclattice_target_groups, keyed the same as var.vpclattice_target_groups"
  value       = { for k, v in aws_vpclattice_target_group.vpclattice_target_groups : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "vpclattice_target_groups_type" {
  description = "Map of type values across all vpclattice_target_groups, keyed the same as var.vpclattice_target_groups"
  value       = { for k, v in aws_vpclattice_target_group.vpclattice_target_groups : k => v.type if v.type != null && length(v.type) > 0 }
}

