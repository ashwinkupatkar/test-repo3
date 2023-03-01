module "tfplan-functions" {
    source = "../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "exemptions" {
    source = "../../common-functions/exemptions.sentinel"
}

policy "storage-account-settings2" {
    source = "../../policies/azure/storage-account-settings2.sentinel"
    enforcement_level = "soft-mandatory"
}
   
policy "log-retention" {
    source = "../../policies/azure/log-retention.sentinel"
    enforcement_level = "soft-mandatory"
}
