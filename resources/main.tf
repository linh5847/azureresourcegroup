resource "azurerm_resource_group" "RG" {
   name         = var.resource_group_name
   location     = var.location

   tags         = merge(
       {
           "Name"   = format("%s", var.resource_group_name)
       },
       var.resource_group_tag,
   )
}