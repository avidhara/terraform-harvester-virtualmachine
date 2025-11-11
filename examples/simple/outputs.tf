output "output_id" {
  description = "ID of the Virtual Machine image"
  value       = data.harvester_image.image.id
}

output "network_id" {
  description = "ID of the Network"
  value       = data.harvester_network.network.id
}
