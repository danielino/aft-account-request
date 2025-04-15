# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "management" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "dmarcocci.aws.lab1@dxc.com"
    AccountName  = "root account"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "root"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "dmarcocci.aws.lab1@dxc.com"
    SSOUserFirstName = "Daniele"
    SSOUserLastName  = "Marcocci"
  }

  account_tags = {
    "ABC:Owner"       = "dmarcocci.aws.lab1@dxc.com"
    "ABC:Environment" = "Prod"
    "ABC:Project"     = "LandingZone"
  }

  change_management_parameters = {
    change_requested_by = "John Doe"
    change_reason       = "importing log archive account"
  }

  custom_fields = {
  }

  account_customizations_name = "management"
}
