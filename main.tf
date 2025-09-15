terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
  # cloud {
  #   organization = "test-organization-name-001"
  #   workspaces {
  #     name = "learn-terraform-azure"
  #   }
  # }
}

provider "docker" {
  host = "npipe:////.//pipe//docker_engine"
}

# provider "azurerm" {
#   features {}

#   # # Configure the Azure Provider with a specific subscription ID
#   subscription_id = "14999443-ee0c-478d-9bb8-941e6445ba8a" # Replace with your actual subscription ID
# }

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = var.container_name
  ports {
    internal = 80
    external = 8081 # original tutorial's using 8080 but we use 8081 to avoid conflicts
  }
}

# resource "azurerm_resource_group" "rg" {
#   name     = var.resource_group_name
#   location = "westus2"

#   tags = {
#     Environment = "Terraform Getting Started"
#     Team        = "DevOps"
#   }
# }
