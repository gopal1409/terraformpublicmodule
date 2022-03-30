#i want to create an static website using the module i have define inside my one of the folder
module "azure_static_website" {
    #to call a module
    source = "./terraform-manifest/azure-static-website"
    location = "eastus"
    resource_group_name = "myrg1"

    #storage account 
    storage_account_name = "staticwebsite"
    storage_account_tier = "Standard"
    storage_account_replication_type = "LRS"
    storage_account_kind = "StorageV2"
    static_website_index_document = "index.html"
    static_website_error_404_document = "error.html"
}