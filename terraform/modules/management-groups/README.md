<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.107 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3.107 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_enterprise_scale"></a> [enterprise\_scale](#module\_enterprise\_scale) | git::https://github.com/az-lz-20-mb/terraform-azurerm-caf-enterprise-scale.git | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_client_config.core](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_location"></a> [default\_location](#input\_default\_location) | Default Azure region for deployments | `string` | n/a | yes |
| <a name="input_deploy_core_landing_zones"></a> [deploy\_core\_landing\_zones](#input\_deploy\_core\_landing\_zones) | Flag to deploy core landing zones | `bool` | n/a | yes |
| <a name="input_landing_zones"></a> [landing\_zones](#input\_landing\_zones) | Map of landing zones with optional parameters | <pre>map(object({<br>    parent          = optional(string, "root") # Defaults to "root" if not provided<br>    archetype_id    = optional(string, "default-archetype") # Defaults to "default-archetype"<br>    subscription_ids = optional(list(string), []) # Defaults to an empty list if not provided<br>    parameters      = optional(any, {}) # Optional map for additional parameters<br>    access_control  = optional(map(set(string)), {}) # Optional access control settings<br>    display_name    = optional(string) # Optional display name<br>  }))</pre> | `{}` | no |
| <a name="input_mg_prefix"></a> [mg\_prefix](#input\_mg\_prefix) | Prefix for the management group names | `string` | n/a | yes |
| <a name="input_root_id"></a> [root\_id](#input\_root\_id) | The ID of the root management group | `string` | `"44a926b2-f8ee-464b-b28a-5e6124f2bb56"` | no |
| <a name="input_root_name"></a> [root\_name](#input\_root\_name) | The name of the root management group | `string` | `"Tenant Root Group"` | no |
| <a name="input_root_scope_resource_id"></a> [root\_scope\_resource\_id](#input\_root\_scope\_resource\_id) | Root scope for policy assignments and management groups | `string` | `"/providers/Microsoft.Management/managementGroups/root-mg"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->