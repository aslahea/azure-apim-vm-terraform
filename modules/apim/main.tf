resource "azurerm_api_management" "apim" {
  name                = var.apim_name
  location            = var.location
  resource_group_name = var.resource_group_name
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email
  sku_name            = var.sku_name
  tags                = var.tags
}

resource "azurerm_api_management_api" "flask_api" {
  name                  = "flask-api"
  resource_group_name   = var.resource_group_name
  api_management_name   = azurerm_api_management.apim.name
  revision              = "1"
  display_name          = "Flask API"
  path                  = "flask"
  protocols             = ["http", "https"]
  service_url           = "http://${var.vm_public_ip}:5000"
  subscription_required = false
}

resource "azurerm_api_management_api_operation" "get_health" {
  operation_id        = "get-health"
  api_name            = azurerm_api_management_api.flask_api.name
  api_management_name = azurerm_api_management.apim.name
  resource_group_name = var.resource_group_name
  display_name        = "Get Health"
  method              = "GET"
  url_template        = "/health"

  response {
    status_code = 200
  }
}

resource "azurerm_api_management_api_operation" "get_users" {
  operation_id        = "get-users"
  api_name            = azurerm_api_management_api.flask_api.name
  api_management_name = azurerm_api_management.apim.name
  resource_group_name = var.resource_group_name
  display_name        = "Get Users"
  method              = "GET"
  url_template        = "/users"

  response {
    status_code = 200
  }
}

resource "azurerm_api_management_api_operation" "post_users" {
  operation_id        = "post-users"
  api_name            = azurerm_api_management_api.flask_api.name
  api_management_name = azurerm_api_management.apim.name
  resource_group_name = var.resource_group_name
  display_name        = "Create User"
  method              = "POST"
  url_template        = "/users"

  response {
    status_code = 201
  }
}

resource "azurerm_api_management_api_policy" "flask_api_policy" {
  api_name            = azurerm_api_management_api.flask_api.name
  api_management_name = azurerm_api_management.apim.name
  resource_group_name = var.resource_group_name

  xml_content = <<XML
<policies>
    <inbound>
        <base />
        <rate-limit calls="10" renewal-period="60" />
    </inbound>
    <backend>
        <base />
    </backend>
    <outbound>
        <base />
    </outbound>
    <on-error>
        <base />
    </on-error>
</policies>
XML
}