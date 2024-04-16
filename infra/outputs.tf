output "AZURE_OPENAI_ENDPOINT" {
  value = azurerm_cognitive_account.cog.endpoint
}

output "AZURE_OPENAI_API_KEY" {
  value     = azurerm_cognitive_account.cog.primary_access_key
  sensitive = true
}

output "AZURE_OPENAI_API_VERSION" {
  value = var.openai_api_version
}

output "AZURE_OPENAI_DEPLOYMENT_NAME" {
  value = var.openai_model_name
}

output "AZURE_OPENAI_MODEL_NAME" {
  value = var.openai_model_name
}

output "AZURE_OPENAI_MODEL_VERSION" {
  value = var.openai_model_version
}

output "AZURE_OPENAI_35_TURBO_DEPLOYMENT_NAME" {
  value = var.openai_35_turbo_model_name
}

output "AZURE_OPENAI_35_TURBO_MODEL_NAME" {
  value = var.openai_35_turbo_model_name
}

output "AZURE_OPENAI_35_TURBO_MODEL_VERSION" {
  value = var.openai_35_turbo_model_version
}

output "AZURE_OPENAI_NAME" {
  value = azurerm_cognitive_account.cog.name
}

output "AZURE_AKS_CLUSTER_NAME" {
  value = local.is_default_workspace ? "" : azurerm_kubernetes_cluster.aks[0].name
}

output "AZURE_AKS_IDENTITY_CLIENT_ID" {
  value = local.is_default_workspace ? "" : azurerm_kubernetes_cluster.aks[0].kubelet_identity[0].object_id
}

output "AZURE_AKS_NAMESPACE" {
  value = local.is_default_workspace ? "" : var.k8s_namespace
}

output "AZURE_CONTAINER_REGISTRY_ENDPOINT" {
  value = local.is_default_workspace ? "" : azurerm_container_registry.acr[0].login_server
}

output "AZURE_CONTAINER_REGISTRY_NAME" {
  value = local.is_default_workspace ? "" : azurerm_container_registry.acr[0].name
}

output "AZURE_LOCATION" {
  value = local.location
}

output "AZURE_RESOURCE_GROUP" {
  value = azurerm_resource_group.rg.name
}

output "AZURE_TENANT_ID" {
  value = data.azurerm_client_config.current.tenant_id
}

output "BING_SEARCH_ENDPOINT" {
  value = jsondecode(azapi_resource.bing.output).properties.endpoint
}

output "BING_SEARCH_KEY" {
  value     = jsondecode(data.azapi_resource_action.bing.output).key1
  sensitive = true
}
