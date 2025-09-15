output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.nginx.id
}

output "image_id" {
  description = "ID of the Docker image"
  value       = docker_image.nginx.id
}

# output "resource_group_id" {
#   value = azurerm_resource_group.rg.id
#   description = "The ID of the Azure Resource Group"
# }
