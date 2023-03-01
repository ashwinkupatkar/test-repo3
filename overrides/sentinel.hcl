module "tfplan-functions" {
    source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "exemptions" {
    source = "../common-functions/exemptions.sentinel"
}

## Override parameters
param "allowed_dns_servers" {
  value = ["100.0.0.4", "100.0.0.5",]
}

policy "approved-dns-servers" {
   source = "../base-policies/approved-dns-servers.sentinel"
#   source = "./approved-dns-servers.sentinel"
   enforcement_level = "advisory"
}
