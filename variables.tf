variable "container_name" {
  description = "Value of the name for the Docker container"
  type        = string
  default     = "ExampleNginxContainer"
}

variable "resource_group_name" {
  default = "myTFResourceGroup"
}
