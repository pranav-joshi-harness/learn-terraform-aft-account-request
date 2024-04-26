module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-dev-aft-member-1-pranav-test@harness.io"
    AccountName               = "aws-aft-pranav-test2"
    ManagedOrganizationalUnit = "AFT-Pranav"
    SSOUserEmail              = "aws-dev-aft-member-1-pranav-test@harness.io"
    SSOUserFirstName          = "aws-aft-pranav-test2"
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
