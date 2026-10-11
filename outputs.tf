output "network_acl_associations_id" {
  description = "Map of id values across all network_acl_associations, keyed the same as var.network_acl_associations"
  value       = { for k, v in aws_network_acl_association.network_acl_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_acl_associations_network_acl_id" {
  description = "Map of network_acl_id values across all network_acl_associations, keyed the same as var.network_acl_associations"
  value       = { for k, v in aws_network_acl_association.network_acl_associations : k => v.network_acl_id if v.network_acl_id != null && length(v.network_acl_id) > 0 }
}
output "network_acl_associations_region" {
  description = "Map of region values across all network_acl_associations, keyed the same as var.network_acl_associations"
  value       = { for k, v in aws_network_acl_association.network_acl_associations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "network_acl_associations_subnet_id" {
  description = "Map of subnet_id values across all network_acl_associations, keyed the same as var.network_acl_associations"
  value       = { for k, v in aws_network_acl_association.network_acl_associations : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}

