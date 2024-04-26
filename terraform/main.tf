module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-aft-pranav-test1@harness.io"
    AccountName               = "aws-aft-pranav-test1"
    ManagedOrganizationalUnit = "ou-n9eo-zrgyomeb"
    SSOUserEmail              = "aws-aft-pranav-test1@harness.io"
    SSOUserFirstName          = "aws-aft-pranav-test1"
    SSOUserLastName           = "adminuser"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
