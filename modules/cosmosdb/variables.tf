variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Location of the resource group"
}

variable "cosmos_account_name" {
  type        = string
  description = "Name of the Cosmos DB account"
}

variable "database_name" {
  type        = string
  description = "Name of the Cosmos DB database"
  default     = "app-db"
}

variable "container_name" {
  type        = string
  description = "Name of the Cosmos DB container"
  default     = "users"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be applied to the resources"
}
