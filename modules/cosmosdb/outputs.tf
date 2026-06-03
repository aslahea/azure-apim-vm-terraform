output "cosmosdb_endpoint" {
  value       = azurerm_cosmosdb_account.db.endpoint
  description = "The endpoint of the Cosmos DB account"
}

output "cosmosdb_primary_key" {
  value       = azurerm_cosmosdb_account.db.primary_key
  sensitive   = true
  description = "The primary key of the Cosmos DB account"
}

output "database_name" {
  value       = azurerm_cosmosdb_sql_database.database.name
  description = "The name of the Cosmos DB SQL database"
}

output "container_name" {
  value       = azurerm_cosmosdb_sql_container.container.name
  description = "The name of the Cosmos DB SQL container"
}
